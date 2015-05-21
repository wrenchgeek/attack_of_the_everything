require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

@@commands = ["attack", "fight", "kill", "hit", "look", "pick", "get", "take", "move", "go", "walk"]


get('/') do

	##sets up starting level
	@room = Room.find(15)
	@monster = Monster.where(room_id: 1).first
	@item = Item.where(room_id: 1).first
	@player = Player.find(1)
	@player.update(room_id: @room.id)

	##displays exits
	possible_exits=[]
	if @room.north
		possible_exits.push(" NORTH")
	end
	if @room.south
		possible_exits.push(" SOUTH")
	end
	if @room.east
		possible_exits.push(" EAST")
	end
	if @room.west
		possible_exits.push(" WEST")
	end
	@exit_output = "You can go"
	possible_exits.each() do |out|
		@exit_output = @exit_output.concat(out)
	end

erb(:index)
end

patch('/:room_id') do

	##sets up room
	@player = Player.find(1)
	@old_room = Room.find(params.fetch("hidden_id_room").to_i)
	##ALL THE STUFF BELOW HERE READS THE INPUT AND DOES THINGS ACCORDINGLY
	@input_string = params.fetch("action")
	@input = @input_string.split(" ")

	##IF INPUT == ATTACK

	if @input.include?("with") && (@input.include?("attack") || @input.include?("fight") || @input.include?("kill") || @input.include?("hit"))
		with_index = @input.index("with")
		monster_name = @input[1..(with_index-1)].join(" ")
		item_name = @input[(with_index + 1)..@input.length].join(" ")
		@item = Item.where(name: item_name).first
		partial_recognition_array = []
		if Monster.where(description: monster_name).first == nil
			Monster.all.each do |monster|
				partial_check_array = []
				@input.each do |word|
					if monster.description.include?(word)
						partial_check_array.push(word)
					end
				end
				if partial_check_array.length >= 2
						partial_recognition_array.push(monster)
						@monster = partial_recognition_array.first
				elsif partial_recognition_array.length < 2
					@does_not_compute = true
				end
			end
		else
			@monster = Monster.where(description: monster_name, room_id: @player.room_id).first
		end


		# if @monster.hp <= 0
		# 	@monster.killed_by_player = true
		# else @monster.attack(@player)




	##LOOK AROUND

	elsif @input.include?("look")
		@room = Room.find(@player.room_id)

	##TAKE AN OBJECT

	elsif (@input.include?("take") || @input.include?("pick") || @input.include?("get"))
		if Item.where(name: @input[1..@input.length].join(" ")).first == nil
			partial_recognition_array = []
			Item.all.each do |item|
				partial_check_array = []
				@input.each do |word|
					if item.name.include?(word)
						partial_check_array.push(word)
					end
				end
				if partial_check_array.length >= 2
						partial_recognition_array.push(item)
						@item = partial_recognition_array.first
				elsif partial_recognition_array.length < 2
					@does_not_compute = true
				end
			end
		else
					@item = (Item.where(name: @input[1..@input.length].join(" ")).first)
		end
			@player.take(@item)

	##MOVE

	elsif @input.include?("move") || @input.include?("go") ||@input.include?("walk")
			@player.move(@input[1])

	##UNRECOGNIZED INPUT

	else "Do what now?"
	end




	##DISPLAYS EXITS

	@room = Room.find(@player.room_id)
	possible_exits = []
	if @room.north
		possible_exits.push(" NORTH")
	end
	if @room.south
		possible_exits.push(" SOUTH")
	end
	if @room.east
		possible_exits.push(" EAST")
	end
	if @room.west
		possible_exits.push(" WEST")
	end
	@exit_output = "You see doors to the  "
	possible_exits.each() do |out|
		@exit_output = @exit_output.concat(out)
	end

	##MONSTER ATTACK

	if @room.monsters.any?
			@monster = Monster.where(room_id: @player.room_id).first
			if @monster.attack_counter > 0
				@monster.attack(@player)
			end
			monster_attack_counter = @monster.attack_counter
			@monster.update(attack_counter: (monster_attack_counter + 1))
		end
	erb(:move)
end

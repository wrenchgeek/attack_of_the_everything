require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

@@entries = []

# @@room = Room.create(:x_coordinate => 1, :y_coordinate => 1)
# @@monster = Monster.create(:description => "A horrible baby", :hp => 100, :ap => 20, :room_id => @@room.id)
# @@item = Item.create(:name => "wrench", :usable? => true, :room_id => @@room.id, attack_damage: 40)
# @@input = nil


#this is all kind of a dumb way to do it i need to autogenerate monsters somewhere .
get('/') do
	@room = Room.find(51)
	@monster = Monster.where(room_id: 51).first
	@item = Item.where(room_id: 51).first
	@@player = Player.create(:hp => 100, :room_id => @room.id)
	@@entries.push (@room.description)
erb(:index)
end

post('/:room_id') do
	@old_room = Room.find(params.fetch("hidden_id_room").to_i)
	@input_string = params.fetch("action").downcase
	@input = @input_string.split(" ")
	if @input.include?("with")
		with_index = @input.index("with")
		monster_name = @input[1..(with_index-1)].join(" ")
		@monster = Monster.where(description: monster_name, room_id: @@player.room_id).first
		weapon = @input[(with_index + 1)..@input.length]
		binding.pry
		@@player.send(@input[0].to_sym, @monster, Item.where(name: weapon.join(""), room_id: @@player.room_id).first)
		if @monster.hp <= 0
			@monster.killed_by_player = true
		else @monster.attack(@@player)
		end
	elsif @input.include?("look")
		room = Room.find(@@player.room_id)
		room.description
	else
		if Item.all.include?(Item.where(name: @input[1..@input.length].join(" ")).first)
			@@player.send(@input[0].to_sym, Item.where(name: @input[1..@input.length].join(" ")).first)
		else
			@@player.send(@input[0].to_sym, @input[1..@input.length])
		end
	end
	@room = Room.find(@@player.room_id)
erb(:move)
@@entries.push(erb(:move))
end

patch('/:room_id') do
	@old_room = Room.find(params.fetch("hidden_id_room").to_i)
	@input_string = params.fetch("action").downcase
	@input = @input_string.split(" ")
	if @input.include?("with")
		with_index = @input.index("with")
		monster_name = @input[1..(with_index-1)].join(" ")
		@monster = Monster.where(description: monster_name, room_id: @@player.room_id).first
		weapon = @input[(with_index + 1)..@input.length]
		binding.pry
		@@player.send(@input[0].to_sym, @monster, Item.where(name: weapon.join(""), room_id: @@player.room_id).first)
		if @monster.hp <= 0
			@monster.killed_by_player = true
		else @monster.attack(@@player)
		end
	elsif @input.include?("look")
		room = Room.find(@@player.room_id)
		room.description
	else
		if Item.all.include?(Item.where(name: @input[1..@input.length].join(" ")).first)
			@@player.send(@input[0].to_sym, Item.where(name: @input[1..@input.length].join(" ")).first)
		else
			@@player.send(@input[0].to_sym, @input[1..@input.length])
		end
	end
	@room = Room.find(@@player.room_id)
erb(:move)
@@entries.push(erb(:move))
end

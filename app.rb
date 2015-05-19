require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



get('/') do
	@room = Room.create(:x_coordinate => 1, :y_coordinate => 1)
	@item = Item.create(:name => "wrench", :usable? => true, :room_id => @room.id)
	@@player = Player.create(:hp => 100, :room_id => @room.id)
erb(:index)
end

post('/') do
	input = params.fetch("action").split(" ")
	action_string = input[1]
	object_string = input[2]
	@@player.send(action.to_sym(object_string))
	erb(:index)
end

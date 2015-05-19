require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
	@@player = Player.new
	@room =
erb(:index)
end

post('/') do
	input = params.fetch("action").split(" ")
	action_string = input[1]
	object_string = input[2]
	player.send(action.to_sym(object))
	if moves.include(action_string)

	end
erb(:index)
end

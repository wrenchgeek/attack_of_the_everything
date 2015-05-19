require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

# @@room = Room.create(:x_coordinate => 1, :y_coordinate => 1)
# @@monster = Monster.create(:description => "A horrible baby", :hp => 100, :ap => 20, :room_id => @@room.id)
# @@item = Item.create(:name => "wrench", :usable? => true, :room_id => @@room.id, attack_damage: 40)
# @@player = Player.create(:hp => 100, :room_id => @@room.id)
# @@input = nil

get('/') do
erb(:index)
end

post('/:room_id') do
	@@input = params.fetch("action")
	@@player.send(@@input.to_sym, @@monster, @@item)
	redirect('/')
end

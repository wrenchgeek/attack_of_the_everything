require 'spec_helper'

describe(Player) do
	it { should belong_to(:room)}

	describe '#take' do
		it 'will allow player take an item if it is in the room' do
			test_item = Item.create(name: "nail", in_backpack?: false, attack_damage: 2, room_id: 2)
			test_player = Player.create(room_id: 2)
			test_player.take(test_item)
			expect(test_item.in_backpack?).to eq(true)
		end
	end

	describe '#move' do
		it 'allows player to move North, South, East, or West' do
			test_player = Player.create(room_id: 1)
			current_room = Room.create(id: 1, x_coordinate: 3, y_coordinate: 3, north: true)
			new_room = Room.create(id: 2, x_coordinate: 3, y_coordinate: 4, north: true)
			test_player.move("north")
			expect(test_player.room_id).to eq(new_room.id)
		end
	end

	describe '#attack' do
		it 'allows player to attack a monster in the room' do
			test_player = Player.create(room_id: 1)
			test_monster = Monster.create(room_id: 1, hp: 10)
			test_weapon = Item.create(name: "hammer", in_backpack?: false, room_id: 1, attack_damage: 3)
			test_player.take(test_weapon)
			test_player.attack(test_monster, test_weapon)
			expect(test_monster.hp).to eq(7)
		end
	end

	describe '#use' do
		it 'will allow player to use an item in backpack' do
			test_item = Item.create(name: "apple", hp_modifier: 4, in_backpack?: false, room_id: 2, attack_damage: 2)
			test_player = Player.create(room_id: 2, hp: 100)
			test_player.take(test_item)
			test_player.use(test_item)
			expect(test_player.hp).to eq(104)
		end
	end
end

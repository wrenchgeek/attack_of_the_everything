require 'spec_helper'

describe(Player) do
	it { should belong_to(:room)}

	describe '#take' do
		it '' do
			test_item = Item.create(name: "nail", weapon?: true, in_backpack?: false, attack_damage: 2, room_id: 2)
			test_player = Player.create(room_id: 2)
			test_player.take(test_item)
			expect(test_item.in_backpack?).to eq(true)
		end
	end
	# describe '#attack' do
	# 	test_item = Item.create(name: "nail", weapon?: true, attack_damage: 2)
	# 	test_monster = Monster.create(description: "bird", hp: 5)
	# 	test_player = Player.create
	# 	# complete spec
	#
	# end
end

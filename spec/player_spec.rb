require 'spec_helper'

describe(Player) do
	it { should belong_to(:room)}

	describe '#attack' do
		test_item = Item.create(name: "nail", weapon?: true, attack_damage: 2)
		test_monster = Monster.create(description: "bird", hp: 5)
		test_player = Player.create()
		# complete spec

	end
end

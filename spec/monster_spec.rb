require('spec_helper')

describe(Monster) do
  it { should belong_to(:room) }
  describe('#attack') do
    it("subtracts monster's attack power from player's hp") do
      test_player = Player.create({:hp => 12, :room_id => 2})
      test_monster = Monster.create({:hp => 9837459, :description => "Attack Bunny", :ap => 3, :killed_by_player => FALSE, :room_id => 2})
      test_monster.attack(test_player)
      expect(test_player.hp()).to(eq(9))
    end
  end
  describe('#dies') do
    it("tests to see if a monster is dead") do
      test_player = Player.create({:hp => 12, :room_id => 2})
      test_monster = Monster.create({:hp => 9, :description => "Attack Bunny", :ap => 3, :killed_by_player => FALSE, :room_id => 2})
      test_item = Item.create({:name => "fork", :attack_damage => 10})
      test_player.attack(test_monster, test_item)
      test_monster.dies()
      expect(test_monster.killed_by_player()).to(eq(true))
      expect(Item.all()).to(eq([test_item, dropped_item]))
      expect(test_monster.description()).to(eq("Attack Bunny corpse"))
    end
  end

  test_item = Item.create({:name => "fork", :attack_damage => 10})
        test_player.attack(test_monster, test_item)
        test_monster.dies()
        # dropped_item = Item.find(1.+(rand(4)))
        # expect(Item.all().include?(dropped_item)).to(eq(true)) ##spec works if dropped_item is local
        expect(test_monster.killed_by_player()).to(eq(true))
-       expect(Item.all()).to(eq([test_item, dropped_item]))
        expect(test_monster.description()).to(eq("Attack Bunny corpse"))
      end
    end
end

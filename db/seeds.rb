require('./lib/item.rb')
require('./lib/monster.rb')

#don't forget to run <code> run $ rake db:seed </code>

# DROPPED LOOT. ADD MORE LATER. these are test items_ids (1..5)
Item.create(:name => "Epicodus T-Shirt, Size: XL", :usable? => false, :weapon? => false, :attack_damage => 0, :in_backpack? => false, :room_id => nil)
Item.create(:name => "The Dude's Rug", :usable? => false, :weapon? => false, :attack_damage => 0, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Flamethrower", :usable? => true, :weapon? => true, :attack_damage => 10, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Machete", :usable? => true, :weapon? => true, :attack_damage => 5, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Fork", :usable? => true, :weapon? => true, :attack_damage => 2, :in_backpack? => false, :room_id => nil)

# NEED MORE ITEMS item_ids (6..whatever) = standard items


# TEST MONSTERS. FEEL FREE TO CHANGE EDIT

Monster.create(:description => "Orc", :hp => 20, :ap => 5, :killed_by_player => false, :room_id => nil)
Monster.create(:description => "Vampire", :hp => 50, :ap => 10, :killed_by_player => false, :room_id => nil)

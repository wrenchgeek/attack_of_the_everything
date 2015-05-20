require('./lib/item.rb')
require('./lib/monster.rb')

#don't forget to run <code> run $ rake db:seed </code>

#keep in mind: will be at least 10 levels if we each come up with at least 2-3

# items dropped from monsters (need one per monster)
Item.create(:name => "Epicodus T-Shirt, Size: XL", :attack_damage=>0, :in_backpack? => false, :room_id => nil)
Item.create(:name =>"Nunchucks", :attack_damage=>7, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"A Baby Seal", :attack_damage=>5, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Machete", :attack_damage=>9, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Rusty Fork", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)

# standard items found in rooms
Item.create(:name =>"Katana", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Stapler (brand new)", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Apple", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"12oz Can of 'Mountain Dew'", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Sandwich (rotten)", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Whiskey, double, on the rocks", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Fire Extinguisher", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Nerf Gun", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Fork", :attack_damage=>2, :in_backpack?=>false, :room_id=>nil)


# TEST MONSTERS. FEEL FREE TO CHANGE EDIT

Monster.create(:description=>"Orc", :hp=>20, :ap=>5, :killed_by_player=>false, :room_id=>nil)
Monster.create(:description=>"Vampire", :hp=>50, :ap=>10, :killed_by_player=>false, :room_id=>nil)

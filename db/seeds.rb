require('./lib/item.rb')
require('./lib/monster.rb')

#don't forget to run <code> run $ rake db:seed </code>

#keep in mind: will be at least 10 levels if we each come up with at least 2-3

# items dropped from monsters (need one per monster)
Item.create(:name => "Epicodus T-Shirt, Size: XL", :attack_damage=>0, :hp_modifier=>1, :in_backpack? => false, :room_id => nil)
Item.create(:name =>"Nunchucks", :attack_damage=>7, :hp_modifier=>0, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"11 Tins of SPAM", :attack_damage=>0, :hp_modifier=>20, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Machete", :attack_damage=>9, :hp_modifier=>0, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Miller High Life, 32oz", :attack_damage=>0, :hp_modifier=>50, :in_backpack?=>false, :room_id=>nil)

# standard items found in rooms
Item.create(:name =>"Katana", :attack_damage=>2, :hp_modifier=>0, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Stapler (brand new)", :attack_damage=>2, :hp_modifier=>0, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Apple", :attack_damage=>2, :hp_modifier=>5, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"12oz Can of 'Mountain Dew'", :attack_damage=>2, :hp_modifier=>5, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Sandwich (rotten)", :attack_damage=>2, :hp_modifier=>3, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Whiskey, double, on the rocks", :attack_damage=>2, :hp_modifier=>100, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Fire Extinguisher", :attack_damage=>2, :hp_modifier=>0, :in_backpack?=>false, :room_id=>nil)
#most powerful weapon
Item.create(:name =>"Nerf Gun", :attack_damage=>100, :hp_modifier=>0, :in_backpack?=>false, :room_id=>nil)
#####################
Item.create(:name =>"A Baby Seal", :attack_damage=>5, :hp_modifier=>1, :in_backpack?=>false, :room_id=>nil)
Item.create(:name =>"Charizard (First Edition) 'Wow!'", :attack_damage=>5, :hp_modifier=>5, :in_backpack?=>false, :room_id=>nil)


# rooms
Room.create({:x_coordiante => 1, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office. It's a horrible mess"})
Room.create({:x_coordiante => 2, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your boss's office. It is covered in Japanese paraphernalia, despite him having no heritage from the region."})
Room.create({:x_coordiante => 3, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "You are in the foyer to your boss's receptionist's personal assistant's office.  You suddenly remember how ridiculous your former life was."})
Room.create({:x_coordiante => 4, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => TRUE, :west => TRUE, :description => "You are at the end of a long hallway. The sheer amout of blood on the walls is staggering."})
Room.create({:x_coordiante => 5, :y_coordinate => 1, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in Wendy's sick corner office. She only got it because she's an insufferable suck up."})
Room.create({:x_coordiante => 1, :y_coordinate => 2, :north => TRUE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's receptionist's office. You could never remember her name."})
Room.create({:x_coordiante => 2, :y_coordinate => 2, :north => TRUE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "You are in your boss's receptionist's office. There are parts of her everywhere."})
Room.create({:x_coordiante => 3, :y_coordinate => 2, :north => TRUE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in your boss's receptionist's personal assistant's office. From the look of things, nothing good happened here."})
Room.create({:x_coordiante => 4, :y_coordinate => 2, :north => FALSE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "You are in the hallway right outside of Dave's office.  It doesn't look like Dave put up much of a fight, he was not the athletic type."})
Room.create({:x_coordiante => 5, :y_coordinate => 2, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "There are in Dave's office.  There are empty Mtn Dew can's everywhere"})
Room.create({:x_coordiante => 1, :y_coordinate => 3, :north => TRUE, :south => TRUE, :east => TRUE, :west => TRUE, :description => "THE EXIT!!! IT'S RIGHT THERE!!! RIGHT IN FRONT OF YOUR STUPID FACE!!!"})
Room.create({:x_coordiante => 2, :y_coordinate => 3, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in the store room. You suddenly become nostalgic for the days that you used to hide in here to avoid work."})
Room.create({:x_coordiante => 3, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in the employee break room. Roger forgot to clean up his mess again"})
Room.create({:x_coordiante => 4, :y_coordinate => 3, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in the hallway right outside of your office. There's blood and brains dripping from the wall."})
Room.create({:x_coordiante => 5, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 1, :y_coordinate => 4, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 2, :y_coordinate => 4, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 3, :y_coordinate => 4, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 4, :y_coordinate => 4, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 5, :y_coordinate => 4, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 1, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 2, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 3, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 4, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 5, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})


# Monsters

Monster.create(:description => "Zombie", :hp => 20, :ap => 5, :killed_by_player => false, :room_id => nil)
Monster.create(:description => "Your stupid boss... as a zombie", :hp => 50, :ap => 10, :killed_by_player => false, :room_id => nil)

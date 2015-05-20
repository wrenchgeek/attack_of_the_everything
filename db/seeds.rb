require('./lib/item.rb')
require('./lib/monster.rb')

#don't forget to run <code> $ rake db:seed </code>

# DROPPED LOOT. ADD MORE LATER. these are test items_ids (1..5)
Item.create(:name => "Epicodus T-Shirt, Size: XL", :usable? => false, :weapon? => false, :attack_damage => 0, :in_backpack? => false, :room_id => nil)
Item.create(:name => "The Dude's Rug", :usable? => false, :weapon? => false, :attack_damage => 0, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Flamethrower", :usable? => true, :weapon? => true, :attack_damage => 10, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Machete", :usable? => true, :weapon? => true, :attack_damage => 5, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Fork", :usable? => true, :weapon? => true, :attack_damage => 2, :in_backpack? => false, :room_id => nil)

# ROOMS

Room.create({:x_coordiante => 1, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office. It's a horrible mess"})
Room.create({:x_coordiante => 2, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your boss's office. It is covered in Japanese paraphernalia, despite him having no heritage from the region."})
Room.create({:x_coordiante => 3, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "You are in the foyer to your boss's receptionist's personal assistant's office.  You suddenly remember how ridiculous your former life was."})
Room.create({:x_coordiante => 4, :y_coordinate => 1, :north => FALSE, :south => TRUE, :east => TRUE, :west => TRUE, :description => "You are at the end of a long hallway. The sheer amout of blood on the walls is staggering."})
Room.create({:x_coordiante => 5, :y_coordinate => 1, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in Wendy's sick corner office. She only got it because she's an insufferable suck up."})
Room.create({:x_coordiante => 1, :y_coordinate => 2, :north => TRUE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's receptionist's office. You could never remember her name."})
Room.create({:x_coordiante => 2, :y_coordinate => 2, :north => TRUE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "You are in your boss's receptionist's office."})
Room.create({:x_coordiante => 3, :y_coordinate => 2, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 4, :y_coordinate => 2, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 5, :y_coordinate => 2, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 1, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 2, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 3, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
Room.create({:x_coordiante => 4, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office it's a horrible mess"})
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

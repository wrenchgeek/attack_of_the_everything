
require('./lib/item.rb')
require('./lib/monster.rb')
require('./lib/room.rb')
require('./lib/player.rb')

Player.create(room_id: 1, hp: 100)

Item.create(:name => "ceremonial letter oppener", :attack_damage => 20, :hp_modifier => 0, :in_backpack? =>  false, :room_id =>  1)
Item.create(:name => "Cool Sunglasses", :attack_damage => 5, :hp_modifier => 10, :in_backpack? =>  false, :room_id =>  12)
Item.create(:name => "Full Cup of Coffee", :attack_damage => 5, :hp_modifier => 50, :in_backpack? =>  false, :room_id =>  7)
Item.create(:name => "VHS Player", :attack_damage => 30, :hp_modifier => 0, :in_backpack? =>  false, :room_id =>  16)
Item.create(:name => "Can of Axe Body Spray", :attack_damage => 75 , :hp_modifier => -10, :in_backpack? =>  false, :room_id => 4 )
Item.create(:name => "Half-Smoked Cigarette", :attack_damage => 10, :hp_modifier => 10, :in_backpack? =>  false, :room_id =>  20)
Item.create(:name => "Old English 40oz", :attack_damage => 20, :hp_modifier => 20, :in_backpack? =>  false, :room_id =>  13)
Item.create(:name => "Hulk Hands", :attack_damage => 15, :hp_modifier => 0, :in_backpack? =>  false, :room_id => 15 )
Item.create(:name => "whole pizza with someone's name written on it", :attack_damage => 5, :hp_modifier => 40, :in_backpack? =>  false, :room_id =>  8)
Item.create(:name => "your father's treasured calculator watch", :attack_damage => 40, :hp_modifier => 0, :in_backpack? =>  false, :room_id =>  25)
Item.create(:name => "a 1/100th scale model of the Mall of America", :attack_damage => 20, :hp_modifier => -10, :in_backpack? =>  false, :room_id =>  4)
Item.create(:name => "a flamethrower that somebody was apparently keeping in their office", :attack_damage => 35, :hp_modifier => 0, :in_backpack? =>  false, :room_id =>  10)
Item.create(:name => "a pill bottle with a big red cross on it. Seems legit.", :attack_damage => -5, :hp_modifier => 30, :in_backpack? =>  false, :room_id =>  2)


Monster.create(:description => "a runty-looking demon", :hp => 30, :ap => 3, :killed_by_player => false, :room_id => 14, :attack_counter => 0)
Monster.create(:description => "horrible demon baby", :hp => 40, :ap => 5, :killed_by_player => false, :room_id => 1, :attack_counter => 0)
Monster.create(:description => "axe-wielding enthusiastic work acquaintance", :hp => 100, :ap => 15, :killed_by_player => false, :room_id => 20, :attack_counter => 0)
Monster.create(:description => "fedora-clad code warrior", :hp => 120, :ap => 10, :killed_by_player => false, :room_id => 13, :attack_counter => 0)
Monster.create(:description => "sentient pile of laundry", :hp => 80, :ap => 5, :killed_by_player => false, :room_id => 4, :attack_counter => 0)
Monster.create(:description => "your blood-soaked grandmother", :hp => 180, :ap => 4, :killed_by_player => false, :room_id => 22, :attack_counter => 0)
Monster.create(:description => "the possessed corpse of your ex-lover", :hp => 100, :ap => 50, :killed_by_player => false, :room_id => 20, :attack_counter => 0)
Monster.create(:description => "warhorse-riding office jockey", :hp => 50, :ap => 10, :killed_by_player => false, :room_id => 16, :attack_counter => 0)
Monster.create(:description => "a tall dude wearing a hockey mask. He's trying a little too hard.", :hp => 50, :ap => 10, :killed_by_player => false, :room_id => 12 , :attack_counter => 0)
Monster.create(:description => "Glampire David Bowie", :hp => 70, :ap => 8, :killed_by_player => false, :room_id => 5, :attack_counter => 0)
Monster.create(:description => "Ninja from Die Antwoord, dressed as an actual ninja", :hp => 15, :ap => 3, :killed_by_player => false, :room_id => 4, :attack_counter => 0)
Monster.create(:description => "superstar producer Hit-Boi, who apparently moonlights as a Hit-Man", :hp => 30, :ap => 2, :killed_by_player => false, :room_id => 3, :attack_counter => 0)
Monster.create(:description => "a clone of yourself, if you were more muscular and attractive. And also a zombie.", :hp => 200, :ap => 10, :killed_by_player => false, :room_id => 11, :attack_counter => 0)

Room.create({:x_coordinate => 1, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "Big Jim's old corner office. Some sort of occult ritual appears to have occured in here, judging by the blood paintings and the scented candles."})

Room.create({:x_coordinate => 2, :y_coordinate => 5, :north => TRUE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "A dark and smoky room. In the corner, what looks like a goblin is weeping softly. You feel awkward."})

Room.create({:x_coordinate => 3, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => TRUE, :west => TRUE, :description => "The bathroom. Whoever was in here last left a stench like sulfur and burnt hair."})

Room.create({:x_coordinate => 4, :y_coordinate => 5, :north => FALSE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "A normal hallway, as far as you can tell. Oh, wait, no, the carpets in here definitely weren't red last time you were in here. Or the walls. Come to think of it, the light fixtures didn't used to be draped with intestines either."})

Room.create({:x_coordinate => 5, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => TRUE, :description => "One of the HR people's offices. Two people in dog masks are playing Go Fish in the corner. Whatever they're betting with, it's not money. You feel uncomfortable."})

Room.create({:x_coordinate => 1, :y_coordinate => 4, :north => TRUE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "A spooky hallway."})

Room.create({:x_coordinate => 2, :y_coordinate => 4, :north => TRUE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "An even spookier stretch of hallway."})

Room.create({:x_coordinate => 3, :y_coordinate => 4, :north => TRUE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "A mildly spooky hallway."})

Room.create({:x_coordinate => 4, :y_coordinate => 4, :north => FALSE, :south => TRUE, :east => TRUE, :west => TRUE, :description => "The SPOOKIEST hallway in the building"})

Room.create({:x_coordinate => 5, :y_coordinate => 4, :north => FALSE, :south => TRUE, :east => FALSE, :west => TRUE, :description => "The water cooler. It appears to be full of well-aged wine."})

Room.create({:x_coordinate => 1, :y_coordinate => 3, :north => FALSE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "Your boss's office. It's still mostly done up in marble and gold, but he's amassed a pretty impressive collection of skulls since the last time you were in here."})

Room.create({:x_coordinate => 2, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => TRUE, :west => TRUE, :description => "A medium-high spooky hallway"})

Room.create({:x_coordinate => 3, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => TRUE, :description => "Your buddy Dave's office. It appears to have been repainted recently. Judging by the state of his corpse, you have to assume it was painted with his blood."})

Room.create({:x_coordinate => 4, :y_coordinate => 3, :north => TRUE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "A normal hallway. Honestly, you kind of prefer the blood cult aesthetic of the other hallways to this Brutalist nightmare."})

Room.create({:x_coordinate => 5, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => TRUE, :description => "Your office. It's even more of a mess than usual. You don't remember much about what happened in the last few hours, but it looks like at some point you barricaded the door with your desk. Something humanoid (but definitely not human) is lying in the corner, motionless."})

Room.create({:x_coordinate => 1, :y_coordinate => 2, :north => FALSE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "Another bathroom. Seriously, who's been eating the hundred-year eggs? It smells like Andre the Giant's boxers in here."})

Room.create({:x_coordinate => 2, :y_coordinate => 2, :north => TRUE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "A hallway. It's not even that spooky. You're not scared. Definitely not scared."})

Room.create({:x_coordinate => 3, :y_coordinate => 2, :north => TRUE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "Rhonda from accounting's office. Rhonda is in the corner, gnawing on some extremely raw meat. You avert your gaze."})

Room.create({:x_coordinate => 4, :y_coordinate => 2, :north => TRUE, :south => TRUE, :east => FALSE, :west => TRUE, :description => "The intern office. Two of the interns are dueling, apparently to the death, before an enthusiastic audience of demonic apparitions. The other interns are waiting in the back, grimly sharpening shivs they've improvised from the remnants of their padfolios. You consider staying to watch, maybe even putting some money on Tim from Montana- the kid's the size of a Mack Truck, for Christ's sake- but one of the apparitions shoots you a hostile glance and you decide you'd better keep moving."})

Room.create({:x_coordinate => 5, :y_coordinate => 2, :north => TRUE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "A narrow hallway. Some robots are sitting in the corner, beeping at each other. When they notice you they give you a menacing look."})

Room.create({:x_coordinate => 1, :y_coordinate => 1, :north => TRUE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "A hallway that appears to have been turned into a vampire's lair. It's surprisingly tasteful."})

Room.create({:x_coordinate => 2, :y_coordinate => 1, :north => FALSE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "A hallway full of smoke. You realize the floor is strewn with zombies, and they're starting to look at you. Your hand moves to your weapon, but one of them notices and gives you a hurt look. 'Chill out, dude.' You realize they're not zombies, just extremely red-eyed people."})

Room.create({:x_coordinate => 3, :y_coordinate => 1, :north => FALSE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "A room full of bouncy balls. Now this is a nice change of pace."})

Room.create({:x_coordinate => 4, :y_coordinate => 3, :north => TRUE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "A corner hallway. The water fountain is spitting out something dark red and starting to overflow. Hopefully it's just wine."})

Room.create({:x_coordinate => 5, :y_coordinate => 3, :north => TRUE, :south => FALSE, :east => FALSE, :west => FALSE, :description => "The supply closet. You'll definitely find something mildly useful here."})


Room.create({:x_coordinate => 0, :y_coordinate => 3, :north => FALSE, :south => FALSE, :east => FALSE, :west => FALSE, :description => "You're finally outside! You're free! As you look behind you, your office building shimmers, then disappears, banished back to the hell dimension from whence it came.

	You leap for joy, then feel suddenly empty. What will you do, now that you're finally free?

		After some hours of contemplation, you decide to treat yourself to a Slurpee at the 7/11 on the corner. You earned it, buddy."})

require('./lib/item.rb')
require('./lib/monster.rb')
require('./lib/room.rb')

Player.create(room_id: 1, hp: 100)

Item.create(:name => "", :attack_damage => , :hp_modifier => , :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "Cool Sunglasses", :attack_damage => 5, :hp_modifier => 10, :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "Full Cup of Coffee", :attack_damage => 5, :hp_modifier => 50, :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "VHS Player", :attack_damage => 30, :hp_modifier => 0, :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "Can of Axe Body Spray", :attack_damage => 75 , :hp_modifier => -10, :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "Half-Smoked Cigarette", :attack_damage => 10, :hp_modifier => 10, :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "Old English 40oz", :attack_damage => 20, :hp_modifier => 20, :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "Hulk Hands", :attack_damage => 15, :hp_modifier => 0, :in_backpack? =>  false, :room_id =>  )
Item.create(:name => "whole pizza with someone's name written on it", :attack_damage => 5, :hp_modifier => 40, :in_backpack? =>  false, :room_id =>  )


Monster.create(:description => "", :hp => , :ap => , :killed_by_player => false, :room_id => )
Monster.create(:description => "horrible baby", :hp => 40, :ap => 5, :killed_by_player => false, :room_id => )
Monster.create(:description => "enthusiastic work acquaintance", :hp => 100, :ap => 15, :killed_by_player => false, :room_id => )
Monster.create(:description => "fedora-clad code warrior", :hp => 120, :ap => 10, :killed_by_player => false, :room_id => )
Monster.create(:description => "call from your parents", :hp => 40, :ap => 80, :killed_by_player => false, :room_id => )
Monster.create(:description => "sentient pile of laundry", :hp => 80, :ap => 5, :killed_by_player => false, :room_id => )
Monster.create(:description => "your adoring grandmother", :hp => 180, :ap => 4, :killed_by_player => false, :room_id => )
Monster.create(:description => "a beam of sunlight", :hp => 40, :ap => 75, :killed_by_player => false, :room_id => )
Monster.create(:description => "your ex-lover", :hp => 100, :ap => 50, :killed_by_player => false, :room_id => )


Room.create({:x_coordinate => , :y_coordinate => , :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => ""})

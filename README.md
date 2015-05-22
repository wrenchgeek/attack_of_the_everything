#Attack of the Everything
<h2>Authors:</h2>
Jim Patt, Brent Bailey, Jeff Lalic, Leroi Dejesa

Completed as a group assignment using Ruby, Sinatra, and ActiveRecord.


<h2>Description:</h2>
An awesomely retro, loosely Zork-inspired text-based adventure.

**WARNING:** a really annoying MIDI song autoplays at game start!


<h2>To illustrate the table relationships:</h2>

**players:**

id | room_id |
---|---------|
1  |   1     |

**items:**

id |      name           | in_backpack? | attack_damage | hp_modifier | room_id
---| ------------------- | ------------ | ------------- | ----------- | -------
1  | Katana              | true         | 25            | 0           | 13
2  | Mountain Dew, 12oz  | true         | 0             | 10          | 5

**monsters:**

id  |  description   |  hp  |  ap  |  room_id  |  killed_by_player  |
---|---------------|------|------|-----------|-----------------|
1  | Zombie Steve 5 |  40  |  10  |  7        |  false          |
2  | William Zabka  |  50  |  10  |  20       |  false          |

**rooms:**

id  | x_coordinate | y_coordinate | north | south | east  | west  |  description   |
--- | ------------ | ------------ | ----- | ----- | ----- | ------| -------------  |
1  |  1  |  5  |  false  |  true  |  false  |  false  |  Steve's Office  |
2  |  2  |  4  |  false  |  true  |  false  |  false  |  Break Room  |


<h2>Setup Instructions:</h2>
  Runs under ruby v2 on OS X. You'll need to run postgres as following:

    $ postgres

  Leave this running. Now create the database as follows:

    $ rake db:setup

  Run the app to start your adventure!:

    $ ruby app.rb


<h2>Known Bugs</h2>
* a few room travel issues, such as monsters attacking right out of the gate
* some items don't update into (or out of) inventory
* minor endgame notification bug


<h2>Possible Future Updates:</h2>
* add mini map with fog of war
* add visual representations of specific objects when looked at, used, etc.
* add code fix where item and monster descriptions don't need to be case sensitive when inputted
* update player functionality: more actions, more items, ui, etc.
* implement game control guide


<h2>Copyright</h2>
 MIT License. Copyright 2015 Brent Bailey

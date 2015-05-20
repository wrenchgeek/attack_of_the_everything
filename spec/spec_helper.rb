ENV['RACK_ENV'] = 'test' #db:seed ## possible solution to test:prepare issue? needs testing

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')
require('./db/seeds.rb')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|

  config.after(:each) do

    Player.all().each() do |player|
      player.destroy()
    end

    Item.all().each() do |item|
      item.destroy()
    end

		Room.all().each() do |room|
			room.destroy()
    end

    Monster.all().each() do |monster|
      monster.destroy()
    end
	end
end

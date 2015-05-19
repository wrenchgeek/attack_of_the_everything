class Room <_ActiveRecord::Base
  has_many: items
  has_many: monsters
end

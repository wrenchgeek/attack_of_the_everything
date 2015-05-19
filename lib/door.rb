<<<<<<< HEAD
class Door <ActiveRecord::Base
  belongs_to :key
=======
class Door<ActiveRecord::Base
  has_one :key
>>>>>>> 6141f210d50581805ebbbf32fa70077c957f2769
end

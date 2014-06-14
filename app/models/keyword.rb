class Keyword < ActiveRecord::Base
<<<<<<< HEAD
  has_many :users
=======
>>>>>>> 1d742673a206a865d69e2aff7ec52365f33b6952
  has_many :users, through: :user_keywords

end

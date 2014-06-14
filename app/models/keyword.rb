class Keyword < ActiveRecord::Base
  has_many :users
  has_many :users, through: :user_keywords

end

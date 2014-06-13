class Place < ActiveRecord::Base
  has_many :users
  has_many :users, through: :user_places
  has_many :headlines
end

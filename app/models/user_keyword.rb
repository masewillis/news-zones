class UserKeyword < ActiveRecord::Base
  belongs_to  :users
  belongs_to  :keywords
end

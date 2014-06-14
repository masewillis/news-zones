class UserPlace < ActiveRecord::Base
  belongs_to  :users
  belongs_to  :places
end

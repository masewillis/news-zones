class Publication < ActiveRecord::Base
  belongs_to :places
  has_many :headlines
end

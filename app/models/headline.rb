class Headline < ActiveRecord::Base
  belongs_to :publications
  has_many :categories
end

class Headline < ActiveRecord::Base
  has_many :categories
  belongs_to :publications





end

class Heading < ActiveRecord::Base
  attr_accessible :order, :title
  has_many :categories
end

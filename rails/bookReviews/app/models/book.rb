class Book < ActiveRecord::Base
  attr_accessible :isbn, :title, :year
  has_many :review
end

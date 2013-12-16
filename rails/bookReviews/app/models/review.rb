class Review < ActiveRecord::Base
  attr_accessible :book_id, :contents, :title
  belongs_to :book
end

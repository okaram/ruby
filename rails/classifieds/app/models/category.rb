class Category < ActiveRecord::Base
  attr_accessible :heading_id, :order, :title
  belongs_to :heading
end

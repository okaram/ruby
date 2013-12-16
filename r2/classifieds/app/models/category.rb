class Category < ActiveRecord::Base
    attr_accessible :order, :super_category_id, :title
    belongs_to :super_category
end

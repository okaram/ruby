class Category < ActiveRecord::Base
  attr_accessible 	:order,  :title
  belongs_to 		:SuperCategory
end

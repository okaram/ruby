class SuperCategory < ActiveRecord::Base
  attr_accessible 	:order, :title
  has_many 			:Categories
end

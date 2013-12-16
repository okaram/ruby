class Reference < ActiveRecord::Base
  attr_accessible :url, :user_id, :visit_count
  belongs_to :user
end

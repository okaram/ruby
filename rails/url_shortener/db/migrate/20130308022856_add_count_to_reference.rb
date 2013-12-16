class AddCountToReference < ActiveRecord::Migration
  def change
    change_table :references do |t|
      t.integer :visit_count , :default => 0
    end
  end
end

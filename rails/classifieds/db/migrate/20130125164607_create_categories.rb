class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :order
      t.integer :heading_id

      t.timestamps
    end
  end
end

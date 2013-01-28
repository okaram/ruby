class CreateSuperCategories < ActiveRecord::Migration
  def change
    create_table :super_categories do |t|
      t.string :title
      t.integer :order

      t.timestamps
    end
  end
end

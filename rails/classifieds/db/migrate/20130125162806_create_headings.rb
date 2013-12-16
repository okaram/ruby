class CreateHeadings < ActiveRecord::Migration
  def change
    create_table :headings do |t|
      t.string :title
      t.integer :order

      t.timestamps
    end
  end
end

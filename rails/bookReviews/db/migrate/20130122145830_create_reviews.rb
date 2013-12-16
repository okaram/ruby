class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :contents
      t.integer :book_id

      t.timestamps
    end
  end
end

class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateTest1s < ActiveRecord::Migration
  def change
    create_table :test1s do |t|
      t.string :short
      t.string :title

      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :description
      t.string :name
      t.integer :likes_counter

      t.timestamps
    end
  end
end

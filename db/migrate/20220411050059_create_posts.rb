class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.float :rating
      t.string :review
      t.float :price
      t.date :date
      t.string :sauce
      t.string :dish
      t.string :area
      t.integer :waiting_time
      t.string :restaurant
      t.timestamps
    end
  end
end

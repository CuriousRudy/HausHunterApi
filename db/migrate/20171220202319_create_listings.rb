class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :street_address
      t.string :sub_address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :beds
      t.integer :baths
      t.integer :asking_price
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

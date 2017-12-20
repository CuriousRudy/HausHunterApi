class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :listing_id
      t.date :date
      t.time :time
      t.boolean :seen

      t.timestamps
    end
  end
end

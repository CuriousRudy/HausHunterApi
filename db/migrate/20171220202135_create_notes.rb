class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.integer :appointment_id
      t.text :content

      t.timestamps
    end
  end
end

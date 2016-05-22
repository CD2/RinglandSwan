class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.integer :number_of_people
      t.datetime :date
      t.string :time
      t.text :message

      t.timestamps
    end
  end
end

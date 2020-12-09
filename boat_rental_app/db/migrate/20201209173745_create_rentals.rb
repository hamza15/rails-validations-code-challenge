class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :customer_name
      t.string :boat_name
      t.datetime :date
      t.datetime :time

      t.timestamps
    end
  end
end

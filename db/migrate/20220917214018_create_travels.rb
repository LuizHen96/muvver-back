class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.string :vehicle
      t.date :departure_date
      t.date :arrive_date
      t.string :origin
      t.string :destination
      t.string :waypoints, array: true
      t.string :transport_volume
      t.string :transporte_weight
      t.string :minimum_price

      t.timestamps
    end
  end
end

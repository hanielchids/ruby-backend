class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.string :location_name
      t.string :destination_name
      t.string :distance
      t.string :timeslot
      t.string :date
      t.string :reference_number

      t.timestamps
    end
  end
end

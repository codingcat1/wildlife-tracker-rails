class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.datetime :date
      t.float :latitude
      t.float :longitude
      t.timestamps
    end

    create_table :sightings_species do |t|
      t.integer :species_id
      t.integer :sighting_id
      t.timestamps
    end
  end
end

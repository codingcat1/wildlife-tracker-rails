class RemoveTable < ActiveRecord::Migration
  def change
    drop_table :sightings_species
  end
end

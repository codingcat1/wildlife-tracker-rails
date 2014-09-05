class CreateRegion < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.timestamps

    add_column :sightings, :region_id, :integer
    end
  end
end

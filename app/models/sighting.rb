class Sighting < ActiveRecord::Base
  belongs_to :species
  belongs_to :region

  validates :date, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :species_id, :presence => true
end

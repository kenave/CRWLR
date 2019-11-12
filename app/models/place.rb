class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  has_many :crawl_places
  has_many :crawls, through: :crawl_places
end

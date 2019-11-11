class Place < ApplicationRecord
  has_many :crawl_places
  has_many :crawls, through: :crawl_places
end

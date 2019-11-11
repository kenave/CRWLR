class Crawl < ApplicationRecord
  belongs_to :host, :class_name => "User", :foreign_key => "host_id"
  has_many :crawl_places
  has_many :places, through: :crawl_places
end

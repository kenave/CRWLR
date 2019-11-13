class User < ApplicationRecord
  has_many :hosted_crawls, :class_name => "Crawl", foreign_key: 'host_id'
  has_many :invites
  has_many :attended_crawls, through: :invites, :source => :crawl

end

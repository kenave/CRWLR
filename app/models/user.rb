class User < ApplicationRecord
  has_many :crawls, foreign_key: "host_id"
end

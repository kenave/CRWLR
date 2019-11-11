class Crawl < ApplicationRecord
  # belongs_to :user, class_name: :Host, foreign_key: "host_id"
  belongs_to :host, :class_name => "User", :foreign_key => "host_id"
end

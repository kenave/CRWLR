class CrawlsController < ApplicationController
  def new
    @user = User.find(1)
    @crawl = Crawl.new
  end
end

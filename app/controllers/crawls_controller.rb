class CrawlsController < ApplicationController
  
  def new
    @user = User.find(1)
    @crawl = Crawl.new
  end

  def create
    @crawl = Crawl.new(crawl_params)
    #byebug
    @crawl.host = User.first
    @crawl.save
    redirect_to user_show_path(@crawl.host)
  end
  private

  def crawl_params
    params.require(:crawl).permit(:name, :location, :duration, :date)
  end
end

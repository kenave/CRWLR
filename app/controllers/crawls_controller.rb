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
    redirect_to show_user_path(@crawl.host)
  end

  def show
    @crawl = Crawl.find(params[:id])
    @places = @crawl.places
    @crawl_places = CrawlPlace.where(crawl_id: @crawl.id)
    byebug
    # @places = crawl_places.map do |cp|
    #   Place.find(cp.place_id)
    # end
  end

  private

  def crawl_params
    params.require(:crawl).permit(:name, :location, :duration, :date)
  end
end

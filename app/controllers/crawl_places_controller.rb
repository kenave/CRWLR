class CrawlPlacesController < ApplicationController
  def new
    @crawl = Crawl.find(params[:id])
    # @place = Place.new
  end

  def type_select
    @crawl = Crawl.find(params[:crawl_id])
    @types = ["Restaurant", "Bar"]
    @search = []
  end

  def category_select
    @crawl = Crawl.find(params[:crawl_id])
    @type = params[:type]
    if @type == "Restaurant"
      @categories = Place.restaurant_categories
    else
      @categories = Place.bar_categories
    end
    @places = []
  end

  def search_results
    @categories = []
    @categories << params[:category]
    byebug
  end
end
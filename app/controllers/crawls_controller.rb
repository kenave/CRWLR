class CrawlsController < ApplicationController
  
  def new
    @user = User.find(1)
    @crawl = Crawl.new
  end

  def create
    @crawl = Crawl.new(crawl_params)
    @crawl.host = User.first
    @crawl.save
    redirect_to show_user_path(@crawl.host)
  end

  def show
    @crawl = Crawl.find(params[:id])
    @places = @crawl.places
    @crawl_places = CrawlPlace.where(crawl_id: @crawl.id)
    @guests = @crawl.guests
    @potential_invites = potential_invites(@crawl)
    @invite = Invite.new
    @invites = Invite.where(crawl_id: @crawl.id)

  end

  def invite
    
  end

  private

  def crawl_params
    params.require(:crawl).permit(:name, :location, :duration, :date)
  end

  def potential_invites(crawl)
    users = User.all
    #byebug
    without_host = users.excluding(crawl.host)
    without_curr_invites = without_host.excluding(crawl.guests)
  end

end

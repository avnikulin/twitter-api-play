class LookupsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def search
    redirect_to lookups_user_path(params['user'])
  end

  def show
    @twitter = TwitterSearch.new
    @twitter_timeline = @twitter.get_timeline(params['user'], 25)
  end
end

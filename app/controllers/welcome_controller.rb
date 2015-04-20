class WelcomeController < ApplicationController

  def index #research how to take thumbnail of video
    @challenger_videos = PublicArena.all_challenger_videos
    # render :json => @challenger_videos
  end


end

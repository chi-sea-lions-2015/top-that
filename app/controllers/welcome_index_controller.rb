class WelcomeIndexController < ApplicationController

  def index #research how to take thumbnail of video
    @video_collection = []
    PublicArena.where(status: "in_battle").each do |pa|
      pa.challenger
  end
end

class VideoController < ApplicationController

  def new
    Video.new
  end

  def create
    @video = Video.create(video_params)
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @user = current_user #write in current_user
    @video = User.find(params[:id])
    @video.update_attributes(video_params)
    if @video.save
      redirect_to @user
    else
      @error = "you just got topped by this app" #Find out if view needs to be rendered client side
    end


    def destroy
      @video = params[:id]
    end
  end

   private

  def video_params
    params.require(:user).permit(:title, :winner?, :data_content)
  end


end

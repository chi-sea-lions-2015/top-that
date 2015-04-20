class VideosController < ApplicationController

  def new
    Video.new
  end

  def create
    if current_user
      @challenger_video = current_user.videos.new(video_params)
      if @video.save
        @public_arena(challenger_video)
      else

      end
  end

  def edit
    @video = Video.find(params[:id])
    render :json => @video
  end

  def update
    @user = current_user #write in current_user
    @video = User.find(params[:id])
    @video.update_attributes(video_params)
    if @video.save
      render :json => @video
    else
      @error = "you just got topped by this app" #Find out if view needs to be rendered client side
    end
  end


  def destroy
    @user = current_user
    @video = params[:id]
    @video.destroy!
    render :json => @user
  end


  private

    def video_params
      params.require(:user).permit(:title, :winner?, :data_content)
    end


end

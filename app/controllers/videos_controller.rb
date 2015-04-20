class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    if current_user
      @challenger_video = current_user.videos.new(video_params)
      if @video.save
        @public_arena = PublicArena.create(challenger_video: @video)
        redirect_to @public_arena
      else
        render "new"
      end
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @user = current_user #write in current_user
    @video = Video.find(params[:id])
    @video.update_attributes(video_params)
    if @video.save
      redirect_to root_path
    else
      render "edit"
    end
  end


  # def destroy
  #   @user = current_user
  #   @video = params[:id]
  #   @video.destroy!
  #   render :json => @user
  # end


  private

    def video_params
      params.require(:user).permit(:title, :winner?, :data_content)
    end


end

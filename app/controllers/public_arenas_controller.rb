class PublicArenasController < ApplicationController

  def show
    @public_arena = PublicArena.find(params[:id])
    @challenger_video = @public_arena.challenger_video
    @challengee_video = @public_arena.challengee_video
    @votes_for_challenger = @challenger_video.votes
    @votes_for_challengee = @challengee_video.votes
    render :json => @public_arena
  end

  def create
    @public_arena = PublicArena.create(public_arena_params)
    render :json => @public_arena
  end


  def update
    @public_arena = PublicArena.find(params[:id])
    @public_arena.update_attributes(public_arena_params)
    render :json => @public_arena
  end

  # def destroy
  #   @user = current_user
  #   @public_arena = PublicArena.find(params[:id])
  #   @public_arena.destroy!
  # end

private

   def public_arena_params
    params.require(:public_arena).permit(:challenger_video, :challengee_video, :status)
   end

end

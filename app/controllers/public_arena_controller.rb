class PublicArenaController < ApplicationController

  def create
    @public_arena = PublicArena.create(public_arena_params)
  end

  def show
    @public_arena = PublicArena.find(params[:id])
  end

  def update
    @public_arena = PublicArena.find(params[:id])
    @public_arena.update_attributes(public_arena_params)
  end

  def destroy
    @public_arena = PublicArena.find(params[:id])
    @public_arena.destroy!
  end

  private

 def  public_arena_params
  params.require(:user).permit(:challenger_video, :challengee_video, :status)
 end

end

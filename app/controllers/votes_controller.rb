class VotesController < ApplicationController
  def create
    @public_arena = PublicArena.find(params[:id])
    @challenger_video = @public_arena.challenger_video
    @challengee_video = @public_arena.challengee_video
    if params[:challenger_video_id]
      @vote = @challenger_video.votes.create(voter_id: current_user.id, video_id: params[:challenger_video_id])
    else
      @vote = @challengee_video.votes.create(voter_id: current_user.id, video_id: params[:challengee_video_id])
    end
    redirect @public_arena
  end
end

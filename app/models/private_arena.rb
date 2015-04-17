class PrivateArena < ActiveRecord::Base
  belongs_to :challenger_video
  belongs_to :challengee_video
  enum state: [:open, :closed, :in_battle]
end

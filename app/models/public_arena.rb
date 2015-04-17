class PublicArena < ActiveRecord::Base
  belongs_to :challenger_video
  belongs_to :challengee_video
end

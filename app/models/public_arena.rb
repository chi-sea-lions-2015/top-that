class PublicArena < ActiveRecord::Base
  belongs_to :challenger_video, class_name: "Video"
  belongs_to :challengee_video, class_name: "Video"
  enum status: [:open, :closed, :in_battle]
end

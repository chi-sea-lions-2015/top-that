class PrivateArena < ActiveRecord::Base
  belongs_to :challenger_video, class_name: "Video"
  belongs_to :challengee_video, class_name: "Video"
  enum state: [:open, :closed, :in_battle]
end

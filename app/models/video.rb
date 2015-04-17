class Video < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  has_many :private_arenas_as_a_challenger, class_name: "PrivateArena", foreign_key: :challenger_video_id
  has_many :private_arenas_as_a_challengee, class_name: "PrivateArena", foreign_key: :challengee_video_id
  has_many :public_arenas_as_a_challenger, class_name: "PublicArena", foreign_key: :challenger_video_id
  has_many :public_arenas_as_a_challengee, class_name: "PublicArena", foreign_key: :challengee_video_id
end

class ArenaAttendance < ActiveRecord::Base
  belongs_to :private_arena
  belongs_to :attendee
end

class TutorSchedule < ActiveRecord::Base
  belongs_to :tutor
  belongs_to :class_session
end

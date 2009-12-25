class Tutor < ActiveRecord::Base
  has_many :tutor_attendances
  has_many :tutor_schedules
end

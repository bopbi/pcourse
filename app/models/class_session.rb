class ClassSession < ActiveRecord::Base
  belongs_to :course_type
  has_many :student_attendances
  has_many :tutor_attendances
end

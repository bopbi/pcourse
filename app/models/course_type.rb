class CourseType < ActiveRecord::Base
  has_many :class_sessions
end

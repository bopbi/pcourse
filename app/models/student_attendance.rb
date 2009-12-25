class StudentAttendance < ActiveRecord::Base
  belongs_to :student
  belongs_to :class_session
  
  def self.clean_search(hash)
      if !hash.nil?
        if !hash["student_attendance_date_equals(1i)"].blank? && !hash["student_attendance_date_equals(2i)"].blank? && !hash["student_attendance_date_equals(3i)"].blank?
          hash["student_attendance_date_equals"] = hash["student_attendance_date_equals(1i)"] + "-" + hash["student_attendance_date_equals(2i)"] + "-" + hash["student_attendance_date_equals(3i)"]
        end
        hash.delete("student_attendance_date_equals(1i)")
        hash.delete("student_attendance_date_equals(2i)")
        hash.delete("student_attendance_date_equals(3i)")
      end
      StudentAttendance.search hash
  end
    
end

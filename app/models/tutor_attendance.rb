class TutorAttendance < ActiveRecord::Base
  belongs_to :tutor
  belongs_to :class_session
  
  def self.clean_search(hash)
    if !hash.nil?
      if !hash["tutor_attendance_date_equals(1i)"].blank? && !hash["tutor_attendance_date_equals(2i)"].blank? && !hash["tutor_attendance_date_equals(3i)"].blank?
        hash["tutor_attendance_date_equals"] = hash["tutor_attendance_date_equals(1i)"] + "-" + hash["tutor_attendance_date_equals(2i)"] + "-" + hash["tutor_attendance_date_equals(3i)"]
      end
      hash.delete("tutor_attendance_date_equals(1i)")
      hash.delete("tutor_attendance_date_equals(2i)")
      hash.delete("tutor_attendance_date_equals(3i)")
    end
    TutorAttendance.search hash
  end
  
end

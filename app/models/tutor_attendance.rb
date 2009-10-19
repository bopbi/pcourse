class TutorAttendance < ActiveRecord::Base
  belongs_to :tutor
  belongs_to :class_session
  
  def self.clean_search(hash)
    if !hash.nil?
      if !hash["attendance_day_equals(1i)"].blank? && !hash["attendance_day_equals(2i)"].blank? && !hash["attendance_day_equals(3i)"].blank?
        hash["attendance_day_equals"] = hash["attendance_day_equals(1i)"] + "-" + hash["attendance_day_equals(2i)"] + "-" + hash["attendance_day_equals(3i)"]
      end
      hash.delete("attendance_day_equals(1i)")
      hash.delete("attendance_day_equals(2i)")
      hash.delete("attendance_day_equals(3i)")
    end
    TutorAttendance.search hash
  end
  
end

class RenameStudentAttendaceDate < ActiveRecord::Migration
  def self.up
    rename_column :student_attendances , :student_attendances_date, :student_attendance_date
  end

  def self.down
    rename_column :student_attendances , :student_attendance_date, :student_attendances_date
  end
end

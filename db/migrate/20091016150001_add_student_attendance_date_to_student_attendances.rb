class AddStudentAttendanceDateToStudentAttendances < ActiveRecord::Migration
  def self.up
    add_column :student_attendances, :student_attendances_date, :date
  end

  def self.down
    remove_column :student_attendances, :student_attendances_date
  end
end

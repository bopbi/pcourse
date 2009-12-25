class ChangeName < ActiveRecord::Migration
  def self.up
    rename_column :tutor_attendances , :attendance_day, :tutor_attendance_date
  end

  def self.down
    rename_column :tutor_attendances , :tutor_attendance_date, :attendance_day
  end
end

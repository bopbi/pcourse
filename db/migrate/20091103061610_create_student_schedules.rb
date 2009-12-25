class CreateStudentSchedules < ActiveRecord::Migration
  def self.up
    create_table :student_schedules do |t|
      t.integer :student_id
      t.integer :class_session_id

      t.timestamps
    end
  end

  def self.down
    drop_table :student_schedules
  end
end

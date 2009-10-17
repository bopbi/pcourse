class CreateStudentAttendances < ActiveRecord::Migration
  def self.up
    create_table :student_attendances do |t|
      t.integer :student_id
      t.integer :class_session_id
      t.boolean :attendance

      t.timestamps
    end
  end

  def self.down
    drop_table :student_attendances
  end
end

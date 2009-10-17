class CreateTutorAttendances < ActiveRecord::Migration
  def self.up
    create_table :tutor_attendances do |t|
      t.integer :tutor_id
      t.integer :class_session_id
      t.date :attendance_day
      t.boolean :attendance

      t.timestamps
    end
  end

  def self.down
    drop_table :tutor_attendances
  end
end

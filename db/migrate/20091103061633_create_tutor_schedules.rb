class CreateTutorSchedules < ActiveRecord::Migration
  def self.up
    create_table :tutor_schedules do |t|
      t.integer :tutor_id
      t.integer :class_session_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tutor_schedules
  end
end

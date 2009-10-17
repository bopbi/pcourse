class CreateClassSessions < ActiveRecord::Migration
  def self.up
    create_table :class_sessions do |t|
      t.string :class_session_name
      t.string :day
      t.string :start

      t.timestamps
    end
  end

  def self.down
    drop_table :class_sessions
  end
end

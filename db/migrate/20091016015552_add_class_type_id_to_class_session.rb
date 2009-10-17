class AddClassTypeIdToClassSession < ActiveRecord::Migration
  def self.up
    add_column :class_sessions, :course_type_id, :integer
  end

  def self.down
    remove_column :class_sessions, :course_type_id
  end
end

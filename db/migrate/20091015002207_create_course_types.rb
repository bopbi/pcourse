class CreateCourseTypes < ActiveRecord::Migration
  def self.up
    create_table :course_types do |t|
      t.string :course_type_name
      t.float :course_type_fee

      t.timestamps
    end
  end

  def self.down
    drop_table :course_types
  end
end

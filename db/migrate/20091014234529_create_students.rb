class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :student_no
      t.date :register_date
      t.string :name
      t.string :place_birth
      t.date :date_birth
      t.text :address
      t.string :phone_number
      t.string :handphone_number
      t.integer :school_id
      t.string :grade
      t.string :father_name
      t.string :mother_name
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end

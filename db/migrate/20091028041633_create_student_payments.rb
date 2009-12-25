class CreateStudentPayments < ActiveRecord::Migration
  def self.up
    create_table :student_payments do |t|
      t.integer :student_id
      t.date :month_payment

      t.timestamps
    end
  end

  def self.down
    drop_table :student_payments
  end
end

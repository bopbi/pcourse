class AddAddressTelephoneToTutor < ActiveRecord::Migration
  def self.up
    add_column :tutors, :tutor_address, :text
    add_column :tutors, :tutor_phone, :string
    add_column :tutors, :tutor_handphone, :string
  end

  def self.down
    remove_column :tutors, :tutor_address
    remove_column :tutors, :tutor_phone
    remove_column :tutors, :tutor_handphone
  end
end

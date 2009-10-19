class Student < ActiveRecord::Base
  belongs_to :school
  has_many :student_attendances
  
  has_attached_file :photo, :styles => { :small => "150x150>" , :medium => "300x300>"},
                      :url => "/assets/student/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/student/:id/:style/:basename.:extension"

  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  def self.clean_search(hash)
    if !hash.nil?
      if !hash["date_birth_equals(1i)"].blank? && !hash["date_birth_equals(2i)"].blank? && !hash["date_birth_equals(3i)"].blank?
        hash["date_birth_equals"] = hash["date_birth_equals(1i)"] + "-" + hash["date_birth_equals(2i)"] + "-" + hash["date_birth_equals(3i)"]
      end
      if !hash["register_date_equals(1i)"].blank? && !hash["register_date_equals(2i)"].blank? && !hash["register_date_equals(3i)"].blank?
        hash["register_date_equals"] = hash["register_date_equals(1i)"] + "-" + hash["register_date_equals(2i)"] + "-" + hash["register_date_equals(3i)"]
      end
      hash.delete("date_birth_equals(1i)")
      hash.delete("date_birth_equals(2i)")
      hash.delete("date_birth_equals(3i)")
      hash.delete("register_date_equals(1i)")
      hash.delete("register_date_equals(2i)")
      hash.delete("register_date_equals(3i)")
    end
    Student.search hash
  end
  
end

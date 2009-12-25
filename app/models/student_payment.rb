class StudentPayment < ActiveRecord::Base
  belongs_to :student
  
  def self.clean_search(hash)
    if !hash.nil?
      if !hash["month_payment_equals(1i)"].blank? && !hash["month_payment_equals(2i)"].blank? && !hash["month_payment_equals(3i)"].blank?
        hash["month_payment_equals"] = hash["month_payment_equals(1i)"] + "-" + hash["month_payment_equals(2i)"] + "-" + hash["month_payment_equals(3i)"]
      end
      hash.delete("month_payment_equals(1i)")
      hash.delete("month_payment_equals(2i)")
      hash.delete("month_payment_equals(3i)")
    end
    StudentPayment.search hash
  end
  
end

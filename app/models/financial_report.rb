class FinancialReport < ActiveRecord::Base
  belongs_to :transaction_type
  belongs_to :user
  
  def self.clean_search(hash)
      if !hash.nil?
        if !hash["financial_report_date_equals(1i)"].blank? && !hash["financial_report_date_equals(2i)"].blank? && !hash["financial_report_date_equals(3i)"].blank?
          hash["financial_report_date_equals"] = hash["financial_report_date_equals(1i)"] + "-" + hash["financial_report_date_equals(2i)"] + "-" + hash["financial_report_date_equals(3i)"]
        end
        hash.delete("financial_report_date_equals(1i)")
        hash.delete("financial_report_date_equals(2i)")
        hash.delete("financial_report_date_equals(3i)")
      end
      FinancialReport.search hash
    end
    
end

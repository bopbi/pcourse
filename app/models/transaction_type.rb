class TransactionType < ActiveRecord::Base
  has_many :financial_reports
end

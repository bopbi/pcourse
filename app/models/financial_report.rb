class FinancialReport < ActiveRecord::Base
  belongs_to :transaction_type
  belongs_to :user
end

class ChangeColumnNameType < ActiveRecord::Migration
  def self.up
    rename_column :financial_reports, :type , :debit
    rename_column :transaction_types, :type , :debit
  end

  def self.down
    rename_column :financial_reports, :debit , :type
    rename_column :transaction_types, :debit , :type
  end
end

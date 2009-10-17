class CreateFinancialReports < ActiveRecord::Migration
  def self.up
    create_table :financial_reports do |t|
      t.date :financial_report_date
      t.integer :transaction_type_id
      t.float :value
      t.boolean :type
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :financial_reports
  end
end

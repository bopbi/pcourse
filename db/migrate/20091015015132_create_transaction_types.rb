class CreateTransactionTypes < ActiveRecord::Migration
  def self.up
    create_table :transaction_types do |t|
      t.string :transaction_type_code
      t.string :transaction_type_name
      t.boolean :type

      t.timestamps
    end
  end

  def self.down
    drop_table :transaction_types
  end
end

class CreateRedAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :red_accounts do |t|
      t.integer :accountId
      t.string :name
      t.integer :accountBalance
      t.integer :accountLimit
      t.date :paymentDate
      t.string :userID
      t.string :integer
      t.integer :apr

      t.timestamps
    end
  end
end

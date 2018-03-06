class CreateBlackAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :black_accounts do |t|
      t.integer :Accountid
      t.string :name
      t.integer :accountBalance
      t.integer :accountLimit
      t.integer :apr
      t.integer :userId

      t.timestamps
    end
  end
end

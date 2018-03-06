class CreateBlueAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :blue_accounts do |t|
      t.integer :Accountid
      t.string :name
      t.integer :accountBalance
      t.string :Address
      t.date :paymentDate
      t.integer :userID
      t.string :contactInformation

      t.timestamps
    end
  end
end

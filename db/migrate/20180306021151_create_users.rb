class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.boolean :admin

      t.timestamps
    end
    create_table :red_accounts do |t|
      t.belongs_to :user, index: true
      t.datetime :published_at
      t.timestamps
    end
    create_table :black_accounts do |t|
      t.belongs_to :user, index: true
      t.datetime :published_at
      t.timestamps
    end
    create_table :blue_accounts do |t|
      t.belongs_to :user, index: true
      t.datetime :published_at
      t.timestamps
    end
  end
end

class User < ApplicationRecord
  has_many :black_accounts
  has_many :blue_accounts
  has_many :red_accounts
end

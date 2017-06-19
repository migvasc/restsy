class Customer < ActiveRecord::Base
  has_many :subscription
  has_many :menu, through: :subscription
end

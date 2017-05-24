class Menu < ActiveRecord::Base
  belongs_to :customer
  has_many :subscription
  has_many :menu_x_meal
end

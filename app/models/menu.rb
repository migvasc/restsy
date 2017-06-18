class Menu < ActiveRecord::Base
  belongs_to :customer
  has_many :menu_x_meals
  has_many :meal, through: :menu_x_meals
  has_many :subscription
  has_many :customer, through: :subscription
end
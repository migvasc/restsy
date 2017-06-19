class Meal < ActiveRecord::Base
  has_many :menu_x_meals
  has_many :menu, through: :menu_x_meals
end

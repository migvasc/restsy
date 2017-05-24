class Customer < ActiveRecord::Base
    has_many :menu
    has_many :subscription
end

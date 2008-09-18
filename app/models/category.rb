class Category < ActiveRecord::Base
  has_many :debts
  register_list 'name', 'id'
end

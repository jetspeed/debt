class User < ActiveRecord::Base
  has_many :debts
end

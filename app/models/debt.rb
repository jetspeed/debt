class Debt < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  def self.per_page
    10
  end
end

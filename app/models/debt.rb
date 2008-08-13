class Debt < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  def self.per_page
    1
  end
end

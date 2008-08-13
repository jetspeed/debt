class Debt < ActiveRecord::Base
  belongs_to :category, :user
  def self.per_page
    1
  end
end

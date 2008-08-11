class CreateDebts < ActiveRecord::Migration
  def self.up
    create_table :debts do |t|
      t.string :description
      t.float :money
      t.time :occurs_on
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :debts
  end
end

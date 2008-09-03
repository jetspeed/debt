require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Debt do
  all_fixtures

  before(:each) do
    @valid_attributes = {
    }
  end


  it "should create a new instance given valid attributes" do
    Debt.create!(@valid_attributes)
  end

  it "should be valid" do
    Debt.new.should be_valid
  end

  it "should has a user" do
    debt = debts(:debt01).user.should_not be_nil
  end

  it "can be store" do
    lambda {
      @debt = Debt.new
      @debt.description, @debt.money = debts(:debt01).description, debts(:debt01).money
      @debt.save
    }.should change(Debt, :count)
  end

end

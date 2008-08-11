class DebtController < ApplicationController
  def index
    @title = "Home Debt"
    @debts = Debt.paginate :page => params[:page], :order => 'money'
  end
end

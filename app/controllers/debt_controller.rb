class DebtController < ApplicationController
  def index
    @title = "Home Debt"
    @debts = Debt.paginate :page => params[:page], :order => 'money'
  end
  def new
    @debt = Debt.new
  end
  def create
    @debt = Debt.new(params[:debt])
    if @debt.save
      redirect_to new_debt_path(:debt => @debt)
    else
      error_stickie("create debt record failed" + @debt.errors.full_messages.to_s)
      redirect_to new_debt_path
    end
  end
end

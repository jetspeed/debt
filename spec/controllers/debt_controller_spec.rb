require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DebtController do

  it 'should get index' do
    get :index
    response.should be_success
    response.should render_template('index')
    title = assigns(:title)
    title.should_not be_nil
  end

  it "should allow get new" do
    get :new
    assigns(:debt).should_not be_nil
    response.should be_success
    response.should render_template(:new)
  end
  it "should post debt successfully" do
    post :create, :debt => @@test_debt
    @debt = assigns(:debt)
    response.should redirect_to(new_debt_path(:debt => @debt))
  end

#   it "should post debt unsuccessfully" do
#     stub(Debt)
#     post :create
#     response.should redirect_to(new_debt_path)

#   end
end

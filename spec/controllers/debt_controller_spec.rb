require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DebtController do

  it 'should get index' do
    get :index
    response.should be_success
    response.should render_template('index')
    title = assigns(:title)
    title.should_not be_nil
#     response.should have_tag("form[action=#{search_accounts_path}]")

#     account_type = assigns(:account_type)
#     account_type.should be_nil
#     #assigns[:account_type].should_not be_nil
  end

  it 'should has the debt table in the index' do
    get :index
    response.should be_success

  end
end

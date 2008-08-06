require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DebtController do

  it 'should get index' do
    get :index
    response.should be_success
    response.should render_template('index')
#     response.should have_tag("form[action=#{search_accounts_path}]")

#     account_type = assigns(:account_type)
#     account_type.should be_nil
#     #assigns[:account_type].should_not be_nil
  end
end

require 'rails_helper'

RSpec.describe "names/index", type: :view do
  before(:each) do
    assign(:names, [
      Name.create!(
        :email => "Email",
        :login => "Login"
      ),
      Name.create!(
        :email => "Email",
        :login => "Login"
      )
    ])
  end

  it "renders a list of names" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
  end
end

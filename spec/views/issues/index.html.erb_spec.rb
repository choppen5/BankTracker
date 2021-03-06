require 'spec_helper'

describe "issues/index" do
  before(:each) do
    assign(:issues, [
      stub_model(Issue,
        :user_id => 1,
        :company_id => 2,
        :story => "Story"
      ),
      stub_model(Issue,
        :user_id => 1,
        :company_id => 2,
        :story => "Story"
      )
    ])
  end

  it "renders a list of issues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Story".to_s, :count => 2
  end
end

require 'spec_helper'

describe "issues/edit" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :user_id => 1,
      :company_id => 1,
      :story => "MyString"
    ))
  end

  it "renders the edit issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path(@issue), :method => "post" do
      assert_select "input#issue_user_id", :name => "issue[user_id]"
      assert_select "input#issue_company_id", :name => "issue[company_id]"
      assert_select "input#issue_story", :name => "issue[story]"
    end
  end
end

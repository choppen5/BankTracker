require 'spec_helper'

describe "issues/new" do
  before(:each) do
    assign(:issue, stub_model(Issue,
      :user_id => 1,
      :company_id => 1,
      :story => "MyString"
    ).as_new_record)
  end

  it "renders new issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path, :method => "post" do
      assert_select "input#issue_user_id", :name => "issue[user_id]"
      assert_select "input#issue_company_id", :name => "issue[company_id]"
      assert_select "input#issue_story", :name => "issue[story]"
    end
  end
end

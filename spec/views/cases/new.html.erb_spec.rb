require 'spec_helper'

describe "cases/new" do
  before(:each) do
    assign(:case, stub_model(Case,
      :user_id => 1,
      :company_id => 1,
      :story => "MyString"
    ).as_new_record)
  end

  it "renders new case form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cases_path, :method => "post" do
      assert_select "input#case_user_id", :name => "case[user_id]"
      assert_select "input#case_company_id", :name => "case[company_id]"
      assert_select "input#case_story", :name => "case[story]"
    end
  end
end

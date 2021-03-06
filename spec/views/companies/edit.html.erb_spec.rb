require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :fax => "MyString",
      :program => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path(@company), :method => "post" do
      assert_select "input#company_name", :name => "company[name]"
      assert_select "input#company_phone", :name => "company[phone]"
      assert_select "input#company_address", :name => "company[address]"
      assert_select "input#company_fax", :name => "company[fax]"
      assert_select "input#company_program", :name => "company[program]"
    end
  end
end

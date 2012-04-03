require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :phone => "Phone",
        :address => "Address",
        :fax => "Fax",
        :program => "Program"
      ),
      stub_model(Company,
        :name => "Name",
        :phone => "Phone",
        :address => "Address",
        :fax => "Fax",
        :program => "Program"
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Program".to_s, :count => 2
  end
end

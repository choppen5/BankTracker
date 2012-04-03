require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "Name",
      :phone => "Phone",
      :address => "Address",
      :fax => "Fax",
      :program => "Program"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Address/)
    rendered.should match(/Fax/)
    rendered.should match(/Program/)
  end
end

require 'spec_helper'

describe "cases/show" do
  before(:each) do
    @case = assign(:case, stub_model(Case,
      :user_id => 1,
      :company_id => 2,
      :story => "Story"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Story/)
  end
end

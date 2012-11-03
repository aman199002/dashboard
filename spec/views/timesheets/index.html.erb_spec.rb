require 'spec_helper'

describe "timesheets/index" do
  before(:each) do
    assign(:timesheets, [
      stub_model(Timesheet),
      stub_model(Timesheet)
    ])
  end

  it "renders a list of timesheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

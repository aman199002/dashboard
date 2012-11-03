require 'spec_helper'

describe "timesheets/edit" do
  before(:each) do
    @timesheet = assign(:timesheet, stub_model(Timesheet))
  end

  it "renders the edit timesheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => timesheets_path(@timesheet), :method => "post" do
    end
  end
end

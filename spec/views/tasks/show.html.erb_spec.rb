require 'spec_helper'

describe "tasks/show" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :project_id => "Project",
      :task_type_id => "Task Type",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project/)
    rendered.should match(/Task Type/)
    rendered.should match(/MyText/)
  end
end

require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :project_id => "MyString",
      :task_type_id => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_project_id", :name => "task[project_id]"
      assert_select "input#task_task_type_id", :name => "task[task_type_id]"
      assert_select "textarea#task_description", :name => "task[description]"
    end
  end
end

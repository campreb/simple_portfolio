require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :category => "MyString",
      :client => "MyString",
      :url => "MyString",
      :github => "MyString",
      :description => "MyText",
      :body => "MyText"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_category[name=?]", "project[category]"

      assert_select "input#project_client[name=?]", "project[client]"

      assert_select "input#project_url[name=?]", "project[url]"

      assert_select "input#project_github[name=?]", "project[github]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "textarea#project_body[name=?]", "project[body]"
    end
  end
end

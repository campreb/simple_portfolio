require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "MyString",
      :category => "MyString",
      :client => "MyString",
      :url => "MyString",
      :github => "MyString",
      :description => "MyText",
      :body => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

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

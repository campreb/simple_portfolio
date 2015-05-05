require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :name => "Name",
        :category => "Category",
        :client => "Client",
        :url => "Url",
        :github => "Github",
        :description => "MyText",
        :body => "MyText"
      ),
      Project.create!(
        :name => "Name",
        :category => "Category",
        :client => "Client",
        :url => "Url",
        :github => "Github",
        :description => "MyText",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "Name",
      :category => "Category",
      :client => "Client",
      :url => "Url",
      :github => "Github",
      :description => "MyText",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Github/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

require 'rails_helper'

RSpec.describe TagsController, type: :controller do

  describe "GET #show" do
    let!(:project){ FactoryGirl.create(:project, tag_list: 'Foo, Bar') }
    before { get :show, tag: 'Foo' }
    it { expect(response).to have_http_status(200) }
    it { expect(assigns(:projects)).to include project }
  end

end

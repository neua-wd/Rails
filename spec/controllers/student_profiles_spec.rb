require 'rails_helper'

RSpec.describe StudentProfilesController, type: :controller do
  it 'should be successful' do
    get :index

    expect(response.status).to eq(200)
  end
  
  it 'should render index' do
    get :index
    expect(response).to render_template(:index)
  end
end
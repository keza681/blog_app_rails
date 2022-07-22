require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }

    it 'should respond with code 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render users list view' do
      expect(response).to render_template(:index)
    end

    it 'should show correct content in the view' do
      expect(response.body).to include('Here is a list of all users')
    end
  end

  describe 'GET /show' do
    before(:example) { get user_path(1) }

    it 'should respond with code 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render user detail view' do
      expect(response).to render_template(:show)
    end

    it 'should show correct content in the view' do
      expect(response.body).to include('Here is the details of the given user based on his user_id')
    end
  end
end

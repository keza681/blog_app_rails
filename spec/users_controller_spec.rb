require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get '/users' }
    it 'should respond with code 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render users index view' do
      expect(response).to render_template(:index)
    end

    it 'should show correct content in the view' do
      expect(response.body).to include('list of all usres')
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/1' }
    it 'should respond with code 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render users show view' do
      expect(response).to render_template(:show)
    end

    it 'should show correct content in the view' do
      expect(response.body).to include('User Details')
    end
  end
end

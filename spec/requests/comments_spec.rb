require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/comments/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/comments/show'
      expect(response).to have_http_status(:success)
    end
  end
end

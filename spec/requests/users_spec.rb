require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }

    it 'Test if action returns correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'Test if action rendered a correct template' do
      expect(response).to render_template('index')
    end

    it 'should return the correct placeholder text' do
      expect(response.body).to include('Users index...')
    end
  end

  describe 'GET /show' do
    before(:example) { get user_path(1) }

    it 'should be a success' do
      expect(response).to have_http_status(:ok)
    end

    it "should render 'show' template" do
      expect(response).to render_template('show')
    end

    it 'should return the correct placeholder text' do
      expect(response.body).to include('Show users')
    end
  end
end

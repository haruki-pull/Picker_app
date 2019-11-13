require 'rails_helper'

RSpec.describe SouvenirsController, type: :controller do
    describe 'GET #index'
    render_views

    before do
      get :index
    end

    it 'render_template :index' do
      expect(response).to render_template(:index)
    end

    it 'bodyに"新規作成"という記述があること' do
      expect(response.body).to include('投稿')
    end

end

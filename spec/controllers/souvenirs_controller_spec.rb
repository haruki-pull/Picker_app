require 'rails_helper'

RSpec.describe SouvenirsController, type: :controller do
    describe 'GET #index'
    #viewファイル描画の前に必要なおまじない 
      render_views
    
    #各itが行われる前に毎回行われる処理
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

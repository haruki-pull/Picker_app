require 'rails_helper'
#httpステータスが正常に送られているか
#rendertemplateが上手く行っているか
#インスタンス変数に値が代入されているか
#モデル数の増減
#redirectの可否

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

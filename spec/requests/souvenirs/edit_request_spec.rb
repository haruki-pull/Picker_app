#httpステータスが正常に送られているか
#rendertemplateが上手く行っているか
#インスタンス変数に値が代入されているか
#モデル数の増減
#redirectの可否

require 'rails_helper'

RSpec.describe 'POST /souvenirs', type: :request do
    
    context '全てのパラメーターが揃っているとき' do

        before(:each) do
            user = FactoryBot.create(:pass_souvenir)
            post '/souvenirs', params: { souvenir: FactoryBot.attributes_for(:pass_souvenir, user: user)}
        end

        context "未ログイン時にsouvenirをupdate" do
            it "already_logged_in?メソッドによってログインページに飛ぶ"
        end


    end
 

end


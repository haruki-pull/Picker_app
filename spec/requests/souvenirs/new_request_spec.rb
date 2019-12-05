#httpステータスが正常に送られているか
#rendertemplateが上手く行っているか
#インスタンス変数に値が代入されているか
#モデル数の増減
#redirectの可否

require 'rails_helper'

RSpec.describe 'POST /souvenirs', type: :request do
    
    context '全てのパラメーターが揃っているとき' do

        before(:each) do
            user = FactoryBot.create(:pass_user)
            debugger
            post '/souvenirs', params: { souvenir: FactoryBot.attributes_for(:pass_souvenir, user: user)}
        end

        it 'リクエスト成功' do
            expect(response.status).to eq 200
        end
        
        it 'souvenirが１増える' do
            expect {
                post '/souvenirs', params: { souvenir: FactoryBot.attributes_for(:pass_souvenir)}
            }.to change(Souvenir, :count).by(1)
        end

        it 'souvenir登録成功のflashメッセージ' do
            expect(flash[:success]).not_to be_empty
        end

    end

    context 'パラメーターが欠けていたとき' do
        
        before(:each) do
            post '/souvenirs', params: {souvenir: FactoryBot.attributes_for(:failure_souvenir)}
        end
        #souvenir登録失敗してもstatus codeは200なのでテストしない

        it 'souvenir登録失敗' do
            expect {
                post '/souvenirs', params: {souvenir: FactoryBot.attributes_for(:failure_souvenir)}
            }.to change(Souvenir, :count).by(0)
        end

        it 'souvenir登録失敗のflashメッセージ' do
            expect(response.body).to include("箇所の不備が存在します")
        end

    end

end


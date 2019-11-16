require 'rails_helper'

RSpec.describe 'POST /souvenirs', type: :request do
    
    context '全てのパラメーターが揃っているとき' do

        before(:each)   do
            post '/souvenirs', params: { souvenir: FactoryBot.attributes_for(:pass_souvenir) }
        end

        it 'リクエスト成功' do
            expect(response.status).to eq 302
        end
        
        it 'ユーザー登録' do
            expect {
                post '/souvenirs', params: { souvenir: FactoryBot.attributes_for(:pass_souvenir) }
            }.to change(Souvenir, :count).by(1)
        end

        it 'ユーザー登録成功のflash' do
            expect(flash[:success]).not_to be_empty
        end

    end

    context 'パラメーターが欠けていたとき' do
        
        before(:each) do
            post '/souvenirs', params: {souvenir: FactoryBot.attributes_for(:failure_souvenir)}
        end
        #ユーザー登録失敗してもstatus codeは200なのでテストしない

        it 'ユーザー登録失敗' do
            expect {
                post '/souvenirs', params: {souvenir: FactoryBot.attributes_for(:failure_souvenir)}
            }.to change(Souvenir, :count).by(0)
        end

        it 'ユーザー登録失敗のflash' do
            expect(response.body).to include("箇所の不備が存在します")
        end

    end

end
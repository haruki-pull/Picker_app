require 'rails_helper'

RSpec.describe 'POST /souvenirs', type: :request do
    
    context '全てのパラメーターが揃っているとき' do
        it '200 OKをだす' do
           post '/souvenirs', params: {name: MyString,
                                        spot: MyString,
                                        price: 1,
                                        picture: MyString,
                                        genre: MyString,
                                        comment: MyString}
            expect(response).to have_http_status(:ok)
        end
        it 'ユーザー登録'
        it 'ユーザー登録成功のflash'
    end

    context 'パラメーターが欠けていたとき' do
        it '400 Bad Requestをだす'
        it 'ユーザー登録失敗'
        it 'ユーザー登録失敗のflash'
    end

end

<%
=begin
%>

let(:url) { '/souvenirs/show' }
        let(:souvenir) {  create(:souvenir, name:'a',spot: 'a') }
        let(:params) do
            {
                id: souvenir.id,
                access_token: 'aaaaaaaaaaaaa' 
            }
        end
    
        # 'do {} end == {{}}' 中の{}はハッシュです。紛らわしいですが。
        # ここまででurlとparamsを作成しました。
    
        it '200 success' do
          get url, params
          expect(response).to have_http_status 200
        end
    
        # urlとparamsをgetメソッドに渡すと成功します。
      end
<%
=begin
%>
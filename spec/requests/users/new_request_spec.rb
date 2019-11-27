#httpステータスが正常に送られているか
#rendertemplateが上手く行っているか
#インスタンス変数に値が代入されているか
#モデル数の増減
#redirectの可否

require 'rails_helper'

RSpec.describe 'POST /users', type: :request do

    context "必要なユーザー情報が全て揃っている時" do
        
        before(:each) do
            post '/users', params: {user: FactoryBot.attributes_for(:pass_user)}
        end

        it "リクエストokを返す" do
            expect(response.status).to eq 302
        end

        it "ユーザー数が１増える" do
            expect{
                post '/users', params: {user: FactoryBot.attributes_for(:pass_user)}
            }.to change(User, :count).by(1)
        end

        it "flashメッセージが出る" do
            expect(flash[:sucess]).not_to be_empty
        end

        it "リダイレクト先がshowアクション" do
        end

    end


    context "必要な条件が揃っていない時" do
        it "ユーザー数が増えない" do
            expect{
                post '/users', params: {user: FactoryBot.attributes_for(:failure_user)}
            }.to change(User, :count).by(0)
        end

        it "フラッシュメッセージを出す" do
            expect(flash[:sucess]).to be_empty
        end
    end

    context "emailが重複しているとき" do
        it "フラッシュメッセージを出す" do
        end
    end
end

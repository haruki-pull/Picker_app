require 'rails_helper'

RSpec.describe UsersController, type: :request do
    describe 'user#new' do
        it 'リクエストの成功' do
            get new_user_url
            expect(response.status).to eq 200
        end
    end
end
    # context "必要なユーザー情報が全て揃っている時" do
        
    #     before(:each) do
    #         post '/users', params: {user: FactoryBot.attributes_for(:pass_user)}
    #     end

    #     it "リクエストokを返す" do
    #         expect(response.status).to eq 302
    #     end

    #     it "ユーザー数が１増える" do
    #         expect{
    #             post '/users', params: {user: FactoryBot.attributes_for(:pass_user)}
    #         }.to change(User, :count).by(1)
    #     end

    #     it "flashメッセージが出る" do
    #         expect(flash[:success]).not_to be_empty
    #     end

    #     it "リダイレクト先がshowアクション" do
    #         expect(response).to redirect_to ("http://www.example.com/users/1")
    #     end

    # end


    # context "必要な条件が揃っていない時" do

    #     before(:each) do
    #         post '/users', params: {user: FactoryBot.attributes_for(:invalid_name_user)}
    #     end

    #     it "ユーザー数が増えない" do
    #         expect{
    #             post '/users', params: {user: FactoryBot.attributes_for(:invalid_name_user)}
    #         }.to change(User, :count).by(0)
    #     end

    #     it "エラーメッセージを出す" do
    #         expect(response.body).to include("箇所の不備が存在します")
    #     end
    # end


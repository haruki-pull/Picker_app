require 'rails_helper'

RSpec.describe UsersController, type: :request do
    
    describe 'POST /users' do
        context do

            let(:user) { FactoryBot.create(:user) }    

                it 'リクエスト成功' do
                    get user_url user.id
                    expect(response.status).to eq 302
                end

                xit '@userの取得' do
                #rspec内でsessionを使う方法探す
                    post :create, session: {user_id: 1}
                    login(user)
                    get user_url user.id
                    expect(response.body).to include "MyString"
                end
        end
    end
 end


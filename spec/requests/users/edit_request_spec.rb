require 'rails_helper'

RSpec.describe UsersController, type: :request do
    
    describe 'POST /users' do
        context do

            let(:user) { FactoryBot.create(:user) }    
            # before 'ユーザーIDをセッションから取り出せるようにする' do
            #     allow_any_instance_of(ActionDispatch::Request)
            #       .to receive(:session).and_return(user: user)
            # end

                it 'リクエスト成功' do
                    get user_url user.id
                    expect(response.status).to eq 302
                end

                it '@userの取得' do
                #rspec内でsessionを使う方法探す
                    post :create, session: {user_id: 1}
                    #post :create, session: {user_id: user.id}
                    login(user)
                    get user_url user.id
                    expect(response.body).to include "MyString"
                end
        end
    end
 end


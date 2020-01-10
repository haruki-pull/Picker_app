require 'rails_helper'

RSpec.describe UsersController, type: :request do
    
    describe 'POST #users' do
       
        let(:user) { FactoryBot.create(:user) }

        before "ログイン状態にする"do
            allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: user.id)
        end

        context do
            it 'リクエスト成功' do
                get user_url user
                expect(response.status).to eq 200
            end

            it '@userの取得' do
                get user_url user
                expect(response.body).to include "MyString"
            end
        end
    end
 end
require 'rails_helper'

RSpec.describe UsersController, type: :request do
    
    describe 'POST /users' do

        context do
            let(:user) { FactoryBot.create(:user) }    
            before do
                allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: user.id)
            end
                it 'リクエスト成功' do
                    get user_url user.id
                    expect(response.status).to eq 200
                end

                it '@userの取得' do
                    get user_url user.id
                    expect(response.body).to include "MyString"
                end
        end
    end
 end
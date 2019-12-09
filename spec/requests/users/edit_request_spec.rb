require 'rails_helper'

RSpec.describe UsersController, type: :request do
    
    describe 'POST /users' do

            let(:user) { FactoryBot.create(:user) }    

            it 'リクエスト成功' do
                get edit_user_url user
                expect(response.status).to eq 302
            end

            xit '@userの取得' do
                login(souvenir.user)
                get edit_souvenir_url souvenir
                expect(response.body).to include "MyString"
            end
    end
 end


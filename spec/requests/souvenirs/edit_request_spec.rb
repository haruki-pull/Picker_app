require 'rails_helper'

RSpec.describe SouvenirsController, type: :request do

    describe 'Souvenirs #edit' do
        let(:souvenir) { FactoryBot.create(:souvenir) }
        
        before "ログイン状態にする"do
            allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: souvenir.user.id)
        end
            
            it 'リクエスト成功' do
                get edit_souvenir_url souvenir
                expect(response.status).to eq 200
            end
    
            it 'souvenirが表示される' do
                get edit_souvenir_url souvenir
                expect(response.body).to include "MyString"
            end
    end
end
require 'rails_helper'
RSpec.describe SouvenirsController, type: :request do

    describe 'Souvenirs #destroy' do
        let!(:souvenir) { FactoryBot.create(:souvenir) }
        
            before do
                allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: souvenir.user.id)
            end
            
            it 'リクエスト成功' do
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir) }
                expect(response.status).to eq 302
            end
    
            it 'souvenirが削除される' do
                expect do
                    delete souvenir_url souvenir
                end.to change(Souvenir, :count).by(-1)
            end

           it 'リダイレクト' do
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
                expect(response).to redirect_to ('http://www.example.com/')
            end
    end
end
require 'rails_helper'
RSpec.describe SouvenirsController, type: :request do

    describe 'Souvenirs #update' do
        let(:souvenir) { FactoryBot.create(:souvenir) }
        

        context 'パラメーターが妥当なとき' do
            

            
            it 'リクエスト成功' do
                byebug
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
                expect(response.status).to eq 302
            end
    
            it 'souvenirの名前が更新される' do
                expect do
                    put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
                end.to change { Souvenir.find(souvenir.id).name }.from('MyString').to('YourString')
            end

           it 'リダイレクト' do
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
                expect(response).to redirect_to ('http://localhost:3000/')
            end
        end
    end
end
require 'rails_helper'
RSpec.describe SouvenirsController, type: :request do

    describe 'Souvenirs #update' do
        let(:souvenir) { FactoryBot.create(:souvenir) }
        before 'ログイン済みの状態にする'do
            allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: souvenir.user.id)
        end

        context 'パラメーターが妥当なとき' do

            it 'リクエスト成功' do
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
                expect(response.status).to eq 302
            end
    
            it 'souvenirの名前が更新される' do
                expect do
                    put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
                end.to change { Souvenir.find(souvenir.id).name }.from('MyString').to('YourString')
            end

           it '変更後souvenirs/indexにリダイレクト' do
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
                expect(response).to redirect_to ('http://www.example.com/')
            end
        end

        context '値が不当な場合' do
        
            it 'リクエスト成功' do
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:invalid_name) }
                expect(response.status).to eq 200
            end

            it 'souvenirの名前が変更されない' do
                expect do
                    put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:invalid_name) }
                end.to_not change(souvenir, :name)
            end

            it 'souvenirs/editがレンダリングされる' do
                put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:invalid_name) }
                expect(response).to render_template(:edit)
            end

            xit 'validationに引っかかる'do
                put souvenir_url souvenir, params: { souveir: FactoryBot.attributes_for(:souvenir, :invalid_name) }
                expect(souvenir).to_not be_valid
            end    

        end
    end
end
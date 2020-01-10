require 'rails_helper'

RSpec.describe SouvenirsController, type: :request do

    describe 'Souvenirs #update' do

        let(:souvenir) { FactoryBot.create(:souvenir) }
        before 'ログイン済みの状態にする'do
            allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: souvenir.user.id)
        end

        context 'パラメーターが妥当なとき' do

            before "変更したい名前をsouvenir_urlにputする" do
                put  souvenir_url souvenir, params: {souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
            end

            it 'リクエスト成功' do
                expect(response.status).to eq 302
            end
    
            it 'souvenirの名前が更新される' do
                expect do
                    put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir) }
                end.to change { Souvenir.find(souvenir.id).name }.from('YourString').to('MyString')
            end

           it '変更後rootにリダイレクト' do
                expect(response).to redirect_to ('http://www.example.com/')
            end
        end

        context '値が不当な場合' do
        
            before "空の名前をsouvenir_urlにputする" do
                put  souvenir_url souvenir, params: {souvenir: FactoryBot.attributes_for(:souvenir,:invalid_name) }
            end

            it 'リクエスト成功' do
                expect(response.status).to eq 200
            end

            it 'souvenirの名前が変更されない' do
                expect do
                    put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:invalid_name) }
                end.to_not change(souvenir, :name)
            end

            it 'souvenirs/editがレンダリングされる' do
                expect(response).to render_template(:edit)
            end

            xit 'validationに引っかかる'do
                expect(souvenir).to_not be_valid
            end    

        end
    end
end
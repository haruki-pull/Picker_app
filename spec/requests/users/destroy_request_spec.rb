require 'rails_helper'

RSpec.describe UsersController, type: :request do

    describe 'Users #destroy' do
        let!(:user) { FactoryBot.create(:user) }
        
            before do
                allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: user.id)
            end
            
            it 'リクエスト成功' do
                put user_url user ,params: { user: FactoryBot.attributes_for(:user) }
                expect(response.status).to eq 302
            end
    
            it 'userが削除される' do
                expect do
                    delete user_url user
                end.to change(User, :count).by(-1)
            end

           it 'リダイレクト' do
                delete user_url user 
                expect(response).to redirect_to ('http://www.example.com/')
            end
    end
end
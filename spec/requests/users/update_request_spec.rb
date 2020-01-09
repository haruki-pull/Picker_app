require "rails_helper"

RSpec.describe UsersController, type: :request do
    
    describe "User#update" do
        let(:user) {FactoryBot.create(:user)}

        before 'ログイン済みの状態にする'do
            allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: user.id)
        end
        
        context "パラメーターが正しい場合" do
            it "リクエスト成功" do
                put  user_url user, params: {user: FactoryBot.attributes_for(:user,:new_name) }
                expect(response.status).to eq 302  
            end

            it "user名が変更される" do
                expect do
                    put  user_url user, params: {user: FactoryBot.attributes_for(:user,:new_name) }
                end.to change {User.find(user.id).name}.from("MyString").to("YourString")
            end

            it "rootにリダイレクト" do
                put  user_url user, params: {user: FactoryBot.attributes_for(:user,:new_name) }
                expect(response).to redirect_to("http://www.example.com/users")
            end
        end

        context "パラメーターが不当な場合" do
            
            it "リクエスト成功" do
                put user_url user, params:{user: FactoryBot.attributes_for(:user, :failure)}
                expect(response.status).to eq 200
            end
        
            it "user名が変更されない" do
                expect do
                    put user_url user, params:{user: FactoryBot.attributes_for(:user, :failure)}
                end.to_not change {User.find(user.id).name}

            end

            it "users#showにリダイレクトされる" do
                put user_url user, params:{user: FactoryBot.attributes_for(:user, :failure)}
                expect(response).to render_template(:show)
            end

        end
    end
end

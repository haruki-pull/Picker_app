require "rails_helper"

RSpec.describe UsersController, type: :request do
    
    describe "User#update" do
        let(:user) {FactoryBot.create(:user)}

        before 'ログイン済みの状態にする'do
            allow_any_instance_of(ActionDispatch::Request).to receive(:session).and_return(user_id: user.id)
        end
        
        context "パラメーターが正しい場合" do

            before "変更したい名前をuser_urlにputする" do
                put  user_url user, params: {user: FactoryBot.attributes_for(:user,:new_name) }
            end

            it "リクエスト成功" do                
                expect(response.status).to eq 302  
            end

            it "user名が変更される" do
                expect do
                    put  user_url user, params: {user: FactoryBot.attributes_for(:user) }
                end.to change {User.find(user.id).name}.from("YourString").to("MyString")
            end

            it "rootにリダイレクト" do
                expect(response).to redirect_to("http://www.example.com/users")
            end
        end

        context "パラメーターが不当な場合" do

            before "空の名前をuser_urlにputする" do
                put  user_url user, params: {user: FactoryBot.attributes_for(:user,:invalid_name) }
            end
            
            it "リクエスト成功" do
                expect(response.status).to eq 200
            end
        
            it "user名が変更されない" do
                expect do
                    put user_url user, params:{user: FactoryBot.attributes_for(:user, :invalid_name)}
                end.to_not change {User.find(user.id).name}

            end

            it "users#showにリダイレクトされる" do
                expect(response).to render_template(:show)
            end

        end
    end
end

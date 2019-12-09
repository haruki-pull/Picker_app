require 'rails_helper'

RSpec.describe SouvenirsController, type: :request do
    
    describe "GET #show" do
        let(:souvenir) { FactoryBot.create(:souvenir) }
    
        context 'souvenirの投稿が存在するとき' do
            
            it 'リクエストの成功' do
                get souvenir_url souvenir.id
                expect(response.status).to eq 200
            end
        end

    end
end
#     souvenir個別ページの表示

#     context 'souvenirに写真が存在するとき' do

#         before do
#             @souvenir = FactoryBot.create(:pass_souvenir)
#         end

#         it 'httpリスエストが200 OK' do
#             get "/souvenirs" + "/" + @souvenir[:id].to_s
#             expect(response.status).to eq 200
#         end

#         it 'showテンプレートが表示' do
#             get "/souvenirs" + "/" + @souvenir[:id].to_s
#             expect(response.body).to include(@souvenir.name)
#         end
#     end

#     context 'souvenirに写真が無いとき' do
#         it 'no_picture.pngを出力する' do
#             @souvenir = FactoryBot.create(:no_picture_souvenir)
#             get "/souvenirs" + "/" + @souvenir[:id].to_s
#             expect(response.body).to include(File.open(File.join(Rails.root, "/app/assets/images/no_picture.png")))
#         end
#     end
# end
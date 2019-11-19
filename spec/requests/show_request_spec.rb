require 'rails_helper'

RSpec.describe 'GET /souvenir', type: :request do
    #souvenir個別ページの表示

    context 'souvenirに写真が存在するとき' do

        before do
            @souvenir = FactoryBot.create(:pass_souvenir)
        end

        it 'httpリスエストが200 OK' do
            get "/souvenirs" + "/" + @souvenir[:id].to_s
            expect(response.status).to eq 200
        end

        it 'showテンプレートが表示' do
            get "/souvenirs" + "/" + @souvenir[:id].to_s
            expect(response.body).to include(@souvenir.name)
        end
    end

    context 'souvenirに写真が無いとき' do
        

        it 'no_picture.pngを出力する' do
            @souvenir = FactoryBot.create(:no_picture_souvenir)
            get "/souvenirs" + "/" + @souvenir[:id].to_s
            expect(response.body).to include(File.open(File.join(Rails.root, "/app/assets/images/no_picture.png")))
        end
    end
end
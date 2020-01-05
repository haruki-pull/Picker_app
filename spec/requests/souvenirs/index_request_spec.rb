require 'rails_helper'
RSpec.describe SouvenirsController, type: :request do

    let(:souvenir) {FactoryBot.create(:souvenir)}    
    
    describe 'Souvenirs #index' do
        it 'リクエストに成功'do
            get souvenirs_url
            expect(response.status).to eq 200
        end

        it "souvenirsの名前が表示される" do
            put souvenir_url souvenir ,params: { souvenir: FactoryBot.attributes_for(:souvenir,:new_name) }
            get souvenirs_url
            expect(response.body).to include "MyString"
        end
    end
    
    after(:all) { Souvenir.destroy_all }
end
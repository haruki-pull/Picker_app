require 'rails_helper'
RSpec.describe SouvenirsController, type: :request do

    
    describe 'Souvenirs #index' do
        it 'リクエストに成功'do
            get souvenirs_url
            expect(response.status).to eq 200
        end

        it "souvenirsの名前が表示される" do
            get souvenirs_url
            expect(respense.body).to include "MyString"
        end
    end
end
require 'rails_helper'

RSpec.describe Souvenir, type: :model do
      it "モデルデータが実際に生成されるか" do
            souvenir = FactoryBot.create(:souvenir)
            
            expect(souvenir).to be_valid
      end
            
end
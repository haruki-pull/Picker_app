require 'rails_helper'
#createメソッドがちゃんと動いているか
#validationが働いているか
#メソッドの働きに問題がないか
RSpec.describe Souvenir, type: :model do
      it "モデルデータが実際に生成されるか" do
            souvenir = FactoryBot.create(:pass_souvenir)
            expect(souvenir).to be_valid
      end
            
end
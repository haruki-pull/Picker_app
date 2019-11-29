require 'rails_helper'

RSpec.describe User, type: :model do
  it "ユーザーが生成されるか" do
    user = FactoryBot.create(:pass_user)
    expect(user).to be_valid
  end

  context "emailが重複しているとき" do

    it "フラッシュメッセージを出す" do
        user1 = FactoryBot.create(:dup_email_user)
        user2 = FactoryBot.build(:dup_email_user)
        expect(user2.valid?).to eq(false)
    end
end
end

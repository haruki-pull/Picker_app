require 'rails_helper'

RSpec.describe User, type: :model do
  it "ユーザーが生成されるか" do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end
end

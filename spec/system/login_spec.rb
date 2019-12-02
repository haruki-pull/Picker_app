require 'rails_helper'

RSpec.describe "User",type: :system do

  before(:each) do
    user = FactoryBot.create(:pass_user)
  end
    
  it "user login" do
      visit '/login'
      fill_in 'session_email', with: 'facker@kencom.com'
      fill_in 'session_password', with: "MyString"
      click_button 'Log in'
      expect(page).to have_content 'ログインに成功しました'
  end
end
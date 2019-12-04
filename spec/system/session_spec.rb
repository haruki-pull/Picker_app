require 'rails_helper'

RSpec.describe "User",type: :system do

  before(:each) do
    user = FactoryBot.create(:pass_user)
  end
    
  it "ログイン失敗" do
      visit '/login'
      fill_in 'session_email', with: 'facker@kencom.com'
      fill_in 'session_password', with: " "
      click_button 'Log in'
      expect(page).to have_content 'ログインに失敗しました'
  end

  it 'ログイン成功' do
    visit '/login'
    fill_in 'session_email', with: 'facker@kencom.com'
    fill_in 'session_password', with: 'MyString'
    click_button 'Log in'
    expect(page).to have_content 'ログインに成功しました'
  end

  it 'ログアウト' do
    visit '/users/user.id'
    find(".edit_alert")
    expect(page).to have_content 'ログアウトしました'
  end
end
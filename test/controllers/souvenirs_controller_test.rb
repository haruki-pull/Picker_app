require 'test_helper'

class SouvenirsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @souvenir = souvenirs(:one)
  end    
  
  #画面表示
  test "should get new" do
    get post_path
    assert_response :success
  end

  test "should get show" do
    get root_path
    assert_response :success
  end

  test "should get edit" do
    get edit_souvenir_path(@souvenir)
    assert_response :success
  end

#validation
#souvenirs/new

  test "新規投稿失敗" do
  #newページにアクセス
  #各値がnilの状態でpostする
  #souvenirs/newページにリダイレクトされる
  end

end

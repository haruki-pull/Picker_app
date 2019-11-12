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
    get souvenir_path(@souvenir)
    assert_response :success
  end

  test "should get edit" do
    get edit_souvenir_path(@souvenir)
    assert_response :success
  end

#validation
#souvenirs/new

  test "新規投稿失敗" do
    get post_path
  #newページにアクセス
  post souvenirs_path, params: {souvenir: {name: "foobar",
                                          spot: "foobar",
                                          price: 1000,
                                          picture:"foobar",
                                          genre:"foobar",
                                          comment:"foobar"}}
  #各値がnilの状態でpostする
  follow_redirect!
  assert_template 'souvenirs/new'
  #souvenirs/newページにリダイレクトされる
  end

end

# <%
# =begin
# %>

# post souvenirs_path, params: {name: "foobar",
# spot: "foobar",
# price: 1000,
# picture:"foobar",
# genre:"foobar,"
# comment:"foobar"}

# <%
# =end
# %>
require 'test_helper'

class SouvenirsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @souvenir = souvenirs(:one)
  end  
  debugger

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

end

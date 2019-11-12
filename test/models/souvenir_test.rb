require 'test_helper'

class SouvenirTest < ActiveSupport::TestCase

  def setup
    @souvenir = souvenirs(:one)
  end

  #長さのバリデーション
  test "name should not longer than 70" do
    @souvenir.name = "a"*71
    assert_not @souvenir.valid?
  end

  test "comment should not longer than 250" do
    @souvenir.comment = "a"*251
    assert_not @souvenir.valid?
  end

  #

end

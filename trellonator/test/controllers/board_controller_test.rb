require 'test_helper'

class BoardControllerTest < ActionDispatch::IntegrationTest
  test "should get List" do
    get board_List_url
    assert_response :success
  end

  test "should get Card" do
    get board_Card_url
    assert_response :success
  end

  test "should get Comment" do
    get board_Comment_url
    assert_response :success
  end

  test "should get Checklist" do
    get board_Checklist_url
    assert_response :success
  end

end

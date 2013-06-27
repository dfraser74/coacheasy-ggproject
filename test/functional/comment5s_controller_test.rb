require 'test_helper'

class Comment5sControllerTest < ActionController::TestCase
  setup do
    @comment5 = comment5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment5" do
    assert_difference('Comment5.count') do
      post :create, comment5: { body: @comment5.body, program_id: @comment5.program_id }
    end

    assert_redirected_to comment5_path(assigns(:comment5))
  end

  test "should show comment5" do
    get :show, id: @comment5
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment5
    assert_response :success
  end

  test "should update comment5" do
    put :update, id: @comment5, comment5: { body: @comment5.body, program_id: @comment5.program_id }
    assert_redirected_to comment5_path(assigns(:comment5))
  end

  test "should destroy comment5" do
    assert_difference('Comment5.count', -1) do
      delete :destroy, id: @comment5
    end

    assert_redirected_to comment5s_path
  end
end

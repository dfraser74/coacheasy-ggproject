require 'test_helper'

class Comment6sControllerTest < ActionController::TestCase
  setup do
    @comment6 = comment6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment6" do
    assert_difference('Comment6.count') do
      post :create, comment6: { body: @comment6.body, program_id: @comment6.program_id }
    end

    assert_redirected_to comment6_path(assigns(:comment6))
  end

  test "should show comment6" do
    get :show, id: @comment6
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment6
    assert_response :success
  end

  test "should update comment6" do
    put :update, id: @comment6, comment6: { body: @comment6.body, program_id: @comment6.program_id }
    assert_redirected_to comment6_path(assigns(:comment6))
  end

  test "should destroy comment6" do
    assert_difference('Comment6.count', -1) do
      delete :destroy, id: @comment6
    end

    assert_redirected_to comment6s_path
  end
end

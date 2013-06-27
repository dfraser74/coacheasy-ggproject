require 'test_helper'

class Comment1sControllerTest < ActionController::TestCase
  setup do
    @comment1 = comment1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment1" do
    assert_difference('Comment1.count') do
      post :create, comment1: { body: @comment1.body, program_id: @comment1.program_id }
    end

    assert_redirected_to comment1_path(assigns(:comment1))
  end

  test "should show comment1" do
    get :show, id: @comment1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment1
    assert_response :success
  end

  test "should update comment1" do
    put :update, id: @comment1, comment1: { body: @comment1.body, program_id: @comment1.program_id }
    assert_redirected_to comment1_path(assigns(:comment1))
  end

  test "should destroy comment1" do
    assert_difference('Comment1.count', -1) do
      delete :destroy, id: @comment1
    end

    assert_redirected_to comment1s_path
  end
end

require 'test_helper'

class PinglunsControllerTest < ActionController::TestCase
  setup do
    @pinglun = pingluns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pingluns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinglun" do
    assert_difference('Pinglun.count') do
      post :create, pinglun: { comment: @pinglun.comment, user: @pinglun.user }
    end

    assert_redirected_to pinglun_path(assigns(:pinglun))
  end

  test "should show pinglun" do
    get :show, id: @pinglun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinglun
    assert_response :success
  end

  test "should update pinglun" do
    put :update, id: @pinglun, pinglun: { comment: @pinglun.comment, user: @pinglun.user }
    assert_redirected_to pinglun_path(assigns(:pinglun))
  end

  test "should destroy pinglun" do
    assert_difference('Pinglun.count', -1) do
      delete :destroy, id: @pinglun
    end

    assert_redirected_to pingluns_path
  end
end

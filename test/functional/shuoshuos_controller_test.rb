require 'test_helper'

class ShuoshuosControllerTest < ActionController::TestCase
  setup do
    @shuoshuo = shuoshuos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shuoshuos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shuoshuo" do
    assert_difference('Shuoshuo.count') do
      post :create, shuoshuo: { content: @shuoshuo.content, pic: @shuoshuo.pic, title: @shuoshuo.title, user: @shuoshuo.user }
    end

    assert_redirected_to shuoshuo_path(assigns(:shuoshuo))
  end

  test "should show shuoshuo" do
    get :show, id: @shuoshuo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shuoshuo
    assert_response :success
  end

  test "should update shuoshuo" do
    put :update, id: @shuoshuo, shuoshuo: { content: @shuoshuo.content, pic: @shuoshuo.pic, title: @shuoshuo.title, user: @shuoshuo.user }
    assert_redirected_to shuoshuo_path(assigns(:shuoshuo))
  end

  test "should destroy shuoshuo" do
    assert_difference('Shuoshuo.count', -1) do
      delete :destroy, id: @shuoshuo
    end

    assert_redirected_to shuoshuos_path
  end
end

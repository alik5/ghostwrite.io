require 'test_helper'

class GhostwritesControllerTest < ActionController::TestCase
  setup do
    @ghostwrite = ghostwrites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ghostwrites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ghostwrite" do
    assert_difference('Ghostwrite.count') do
      post :create, ghostwrite: { content: @ghostwrite.content, string: @ghostwrite.string, text: @ghostwrite.text, title: @ghostwrite.title }
    end

    assert_redirected_to ghostwrite_path(assigns(:ghostwrite))
  end

  test "should show ghostwrite" do
    get :show, id: @ghostwrite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ghostwrite
    assert_response :success
  end

  test "should update ghostwrite" do
    patch :update, id: @ghostwrite, ghostwrite: { content: @ghostwrite.content, string: @ghostwrite.string, text: @ghostwrite.text, title: @ghostwrite.title }
    assert_redirected_to ghostwrite_path(assigns(:ghostwrite))
  end

  test "should destroy ghostwrite" do
    assert_difference('Ghostwrite.count', -1) do
      delete :destroy, id: @ghostwrite
    end

    assert_redirected_to ghostwrites_path
  end
end

require 'test_helper'

class LetterTypesControllerTest < ActionController::TestCase
  setup do
    @letter_type = letter_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:letter_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create letter_type" do
    assert_difference('LetterType.count') do
      post :create, letter_type: { name: @letter_type.name }
    end

    assert_redirected_to letter_type_path(assigns(:letter_type))
  end

  test "should show letter_type" do
    get :show, id: @letter_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @letter_type
    assert_response :success
  end

  test "should update letter_type" do
    patch :update, id: @letter_type, letter_type: { name: @letter_type.name }
    assert_redirected_to letter_type_path(assigns(:letter_type))
  end

  test "should destroy letter_type" do
    assert_difference('LetterType.count', -1) do
      delete :destroy, id: @letter_type
    end

    assert_redirected_to letter_types_path
  end
end

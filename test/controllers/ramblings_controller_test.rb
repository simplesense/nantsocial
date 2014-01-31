require 'test_helper'

class RamblingsControllerTest < ActionController::TestCase
  setup do
    @rambling = ramblings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ramblings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rambling" do
    assert_difference('Rambling.count') do
      post :create, rambling: { description: @rambling.description }
    end

    assert_redirected_to rambling_path(assigns(:rambling))
  end

  test "should show rambling" do
    get :show, id: @rambling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rambling
    assert_response :success
  end

  test "should update rambling" do
    patch :update, id: @rambling, rambling: { description: @rambling.description }
    assert_redirected_to rambling_path(assigns(:rambling))
  end

  test "should destroy rambling" do
    assert_difference('Rambling.count', -1) do
      delete :destroy, id: @rambling
    end

    assert_redirected_to ramblings_path
  end
end

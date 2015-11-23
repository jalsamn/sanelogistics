require 'test_helper'

class CaseTypesControllerTest < ActionController::TestCase
  setup do
    @case_type = case_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_type" do
    assert_difference('CaseType.count') do
      post :create, case_type: { name: @case_type.name }
    end

    assert_redirected_to case_type_path(assigns(:case_type))
  end

  test "should show case_type" do
    get :show, id: @case_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_type
    assert_response :success
  end

  test "should update case_type" do
    patch :update, id: @case_type, case_type: { name: @case_type.name }
    assert_redirected_to case_type_path(assigns(:case_type))
  end

  test "should destroy case_type" do
    assert_difference('CaseType.count', -1) do
      delete :destroy, id: @case_type
    end

    assert_redirected_to case_types_path
  end
end

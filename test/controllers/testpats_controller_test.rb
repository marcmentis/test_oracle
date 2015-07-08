require 'test_helper'

class TestpatsControllerTest < ActionController::TestCase
  setup do
    @testpat = testpats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testpats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testpat" do
    assert_difference('Testpat.count') do
      post :create, testpat: { firstname: @testpat.firstname, identifier: @testpat.identifier, lastname: @testpat.lastname }
    end

    assert_redirected_to testpat_path(assigns(:testpat))
  end

  test "should show testpat" do
    get :show, id: @testpat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testpat
    assert_response :success
  end

  test "should update testpat" do
    patch :update, id: @testpat, testpat: { firstname: @testpat.firstname, identifier: @testpat.identifier, lastname: @testpat.lastname }
    assert_redirected_to testpat_path(assigns(:testpat))
  end

  test "should destroy testpat" do
    assert_difference('Testpat.count', -1) do
      delete :destroy, id: @testpat
    end

    assert_redirected_to testpats_path
  end
end

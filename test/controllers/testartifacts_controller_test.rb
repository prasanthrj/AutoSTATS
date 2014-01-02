require 'test_helper'

class TestartifactsControllerTest < ActionController::TestCase
  setup do
    @testartifact = testartifacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testartifacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testartifact" do
    assert_difference('Testartifact.count') do
      post :create, testartifact: { application_ID: @testartifact.application_ID, automation_ID: @testartifact.automation_ID, module: @testartifact.module, name: @testartifact.name, testcase_ID: @testartifact.testcase_ID }
    end

    assert_redirected_to testartifact_path(assigns(:testartifact))
  end

  test "should show testartifact" do
    get :show, id: @testartifact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testartifact
    assert_response :success
  end

  test "should update testartifact" do
    patch :update, id: @testartifact, testartifact: { application_ID: @testartifact.application_ID, automation_ID: @testartifact.automation_ID, module: @testartifact.module, name: @testartifact.name, testcase_ID: @testartifact.testcase_ID }
    assert_redirected_to testartifact_path(assigns(:testartifact))
  end

  test "should destroy testartifact" do
    assert_difference('Testartifact.count', -1) do
      delete :destroy, id: @testartifact
    end

    assert_redirected_to testartifacts_path
  end
end

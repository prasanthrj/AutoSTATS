require 'test_helper'

class RunsControllerTest < ActionController::TestCase
  setup do
    @run = runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create run" do
    assert_difference('Run.count') do
      post :create, run: { browser: @run.browser, module_name: @run.module_name, project_ID: @run.project_ID, release_ID: @run.release_ID, test_case_ID: @run.test_case_ID, test_case_name: @run.test_case_name, test_result: @run.test_result }
    end

    assert_redirected_to run_path(assigns(:run))
  end

  test "should show run" do
    get :show, id: @run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @run
    assert_response :success
  end

  test "should update run" do
    put :update, id: @run, run: { browser: @run.browser, module_name: @run.module_name, project_ID: @run.project_ID, release_ID: @run.release_ID, test_case_ID: @run.test_case_ID, test_case_name: @run.test_case_name, test_result: @run.test_result }
    assert_redirected_to run_path(assigns(:run))
  end

  test "should destroy run" do
    assert_difference('Run.count', -1) do
      delete :destroy, id: @run
    end

    assert_redirected_to runs_path
  end
end

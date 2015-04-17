require 'test_helper'

class SHistoriesControllerTest < ActionController::TestCase
  setup do
    @s_history = s_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:s_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create s_history" do
    assert_difference('SHistory.count') do
      post :create, s_history: { hdate: @s_history.hdate, ndays: @s_history.ndays, observation: @s_history.observation, staff_id: @s_history.staff_id, type_ent_id: @s_history.type_ent_id }
    end

    assert_redirected_to s_history_path(assigns(:s_history))
  end

  test "should show s_history" do
    get :show, id: @s_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @s_history
    assert_response :success
  end

  test "should update s_history" do
    patch :update, id: @s_history, s_history: { hdate: @s_history.hdate, ndays: @s_history.ndays, observation: @s_history.observation, staff_id: @s_history.staff_id, type_ent_id: @s_history.type_ent_id }
    assert_redirected_to s_history_path(assigns(:s_history))
  end

  test "should destroy s_history" do
    assert_difference('SHistory.count', -1) do
      delete :destroy, id: @s_history
    end

    assert_redirected_to s_histories_path
  end
end

require 'test_helper'

class TypeEntsControllerTest < ActionController::TestCase
  setup do
    @type_ent = type_ents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_ents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_ent" do
    assert_difference('TypeEnt.count') do
      post :create, type_ent: { description: @type_ent.description, initial: @type_ent.initial }
    end

    assert_redirected_to type_ent_path(assigns(:type_ent))
  end

  test "should show type_ent" do
    get :show, id: @type_ent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_ent
    assert_response :success
  end

  test "should update type_ent" do
    patch :update, id: @type_ent, type_ent: { description: @type_ent.description, initial: @type_ent.initial }
    assert_redirected_to type_ent_path(assigns(:type_ent))
  end

  test "should destroy type_ent" do
    assert_difference('TypeEnt.count', -1) do
      delete :destroy, id: @type_ent
    end

    assert_redirected_to type_ents_path
  end
end

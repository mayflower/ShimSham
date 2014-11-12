require 'test_helper'

class DanceClassesControllerTest < ActionController::TestCase
  setup do
    @dance_class = dance_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dance_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dance_class" do
    assert_difference('DanceClass.count') do
      post :create, dance_class: { day: @dance_class.day, level_id: @dance_class.level_id, name: @dance_class.name }
    end

    assert_redirected_to dance_class_path(assigns(:dance_class))
  end

  test "should show dance_class" do
    get :show, id: @dance_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dance_class
    assert_response :success
  end

  test "should update dance_class" do
    patch :update, id: @dance_class, dance_class: { day: @dance_class.day, level_id: @dance_class.level_id, name: @dance_class.name }
    assert_redirected_to dance_class_path(assigns(:dance_class))
  end

  test "should destroy dance_class" do
    assert_difference('DanceClass.count', -1) do
      delete :destroy, id: @dance_class
    end

    assert_redirected_to dance_classes_path
  end
end

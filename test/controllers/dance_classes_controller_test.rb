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
      post :create, dance_class: { description: @dance_class.description, duration: @dance_class.duration, group_id: @dance_class.group_id, max_students: @dance_class.max_students, name: @dance_class.name, price: @dance_class.price, room_id: @dance_class.room_id }
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
    patch :update, id: @dance_class, dance_class: { description: @dance_class.description, duration: @dance_class.duration, group_id: @dance_class.group_id, max_students: @dance_class.max_students, name: @dance_class.name, price: @dance_class.price, room_id: @dance_class.room_id }
    assert_redirected_to dance_class_path(assigns(:dance_class))
  end

  test "should destroy dance_class" do
    assert_difference('DanceClass.count', -1) do
      delete :destroy, id: @dance_class
    end

    assert_redirected_to dance_classes_path
  end
end

require 'test_helper'

class UnitTemplatesControllerTest < ActionController::TestCase
  setup do
    @unit_template = unit_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_template" do
    assert_difference('UnitTemplate.count') do
      post :create, unit_template: { duration: @unit_template.duration, lesson_interval: @unit_template.lesson_interval, max_students: @unit_template.max_students, offer_id: @unit_template.offer_id, price: @unit_template.price, unit_interval: @unit_template.unit_interval }
    end

    assert_redirected_to unit_template_path(assigns(:unit_template))
  end

  test "should show unit_template" do
    get :show, id: @unit_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_template
    assert_response :success
  end

  test "should update unit_template" do
    patch :update, id: @unit_template, unit_template: { duration: @unit_template.duration, lesson_interval: @unit_template.lesson_interval, max_students: @unit_template.max_students, offer_id: @unit_template.offer_id, price: @unit_template.price, unit_interval: @unit_template.unit_interval }
    assert_redirected_to unit_template_path(assigns(:unit_template))
  end

  test "should destroy unit_template" do
    assert_difference('UnitTemplate.count', -1) do
      delete :destroy, id: @unit_template
    end

    assert_redirected_to unit_templates_path
  end
end

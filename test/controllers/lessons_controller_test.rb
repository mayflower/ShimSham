require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  setup do
    @lesson = lessons(:one)
    @dance_class = dance_classes(:lollipops)
    @dance_class_2 = dance_classes(:lindyhop)
    @student_2 = students(:micha)
    @student = students(:flo)
    @instructor = instructors(:christine)
    @instructor_2 = instructors(:angela)

    sign_in users(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post :create, lesson: { dance_class_id: @dance_class.id, instructors: @instructor, students: @student, scheduled: "2015-01-01 10:00:00" }
    end

    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should show lesson" do
    get :show, id: @lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson
    assert_response :success
  end

  test "should update lesson" do
    patch :update, id: @lesson, lesson: { dance_class_id: @dance_class_2.id, instructors: @instructor_2.id, students: @student_2.id, scheduled: "2016-01-01 11:00:00" }
    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete :destroy, id: @lesson
    end

    assert_redirected_to lessons_path
  end
end

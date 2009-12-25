require 'test_helper'

class StudentSchedulesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_schedule" do
    assert_difference('StudentSchedule.count') do
      post :create, :student_schedule => { }
    end

    assert_redirected_to student_schedule_path(assigns(:student_schedule))
  end

  test "should show student_schedule" do
    get :show, :id => student_schedules(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => student_schedules(:one).to_param
    assert_response :success
  end

  test "should update student_schedule" do
    put :update, :id => student_schedules(:one).to_param, :student_schedule => { }
    assert_redirected_to student_schedule_path(assigns(:student_schedule))
  end

  test "should destroy student_schedule" do
    assert_difference('StudentSchedule.count', -1) do
      delete :destroy, :id => student_schedules(:one).to_param
    end

    assert_redirected_to student_schedules_path
  end
end

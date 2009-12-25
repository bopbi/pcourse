require 'test_helper'

class TutorSchedulesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutor_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutor_schedule" do
    assert_difference('TutorSchedule.count') do
      post :create, :tutor_schedule => { }
    end

    assert_redirected_to tutor_schedule_path(assigns(:tutor_schedule))
  end

  test "should show tutor_schedule" do
    get :show, :id => tutor_schedules(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tutor_schedules(:one).to_param
    assert_response :success
  end

  test "should update tutor_schedule" do
    put :update, :id => tutor_schedules(:one).to_param, :tutor_schedule => { }
    assert_redirected_to tutor_schedule_path(assigns(:tutor_schedule))
  end

  test "should destroy tutor_schedule" do
    assert_difference('TutorSchedule.count', -1) do
      delete :destroy, :id => tutor_schedules(:one).to_param
    end

    assert_redirected_to tutor_schedules_path
  end
end

require 'test_helper'

class TutorAttendancesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutor_attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutor_attendance" do
    assert_difference('TutorAttendance.count') do
      post :create, :tutor_attendance => { }
    end

    assert_redirected_to tutor_attendance_path(assigns(:tutor_attendance))
  end

  test "should show tutor_attendance" do
    get :show, :id => tutor_attendances(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tutor_attendances(:one).to_param
    assert_response :success
  end

  test "should update tutor_attendance" do
    put :update, :id => tutor_attendances(:one).to_param, :tutor_attendance => { }
    assert_redirected_to tutor_attendance_path(assigns(:tutor_attendance))
  end

  test "should destroy tutor_attendance" do
    assert_difference('TutorAttendance.count', -1) do
      delete :destroy, :id => tutor_attendances(:one).to_param
    end

    assert_redirected_to tutor_attendances_path
  end
end

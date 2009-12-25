require 'test_helper'

class StudentPaymentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_payment" do
    assert_difference('StudentPayment.count') do
      post :create, :student_payment => { }
    end

    assert_redirected_to student_payment_path(assigns(:student_payment))
  end

  test "should show student_payment" do
    get :show, :id => student_payments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => student_payments(:one).to_param
    assert_response :success
  end

  test "should update student_payment" do
    put :update, :id => student_payments(:one).to_param, :student_payment => { }
    assert_redirected_to student_payment_path(assigns(:student_payment))
  end

  test "should destroy student_payment" do
    assert_difference('StudentPayment.count', -1) do
      delete :destroy, :id => student_payments(:one).to_param
    end

    assert_redirected_to student_payments_path
  end
end

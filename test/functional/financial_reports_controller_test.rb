require 'test_helper'

class FinancialReportsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financial_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financial_report" do
    assert_difference('FinancialReport.count') do
      post :create, :financial_report => { }
    end

    assert_redirected_to financial_report_path(assigns(:financial_report))
  end

  test "should show financial_report" do
    get :show, :id => financial_reports(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => financial_reports(:one).to_param
    assert_response :success
  end

  test "should update financial_report" do
    put :update, :id => financial_reports(:one).to_param, :financial_report => { }
    assert_redirected_to financial_report_path(assigns(:financial_report))
  end

  test "should destroy financial_report" do
    assert_difference('FinancialReport.count', -1) do
      delete :destroy, :id => financial_reports(:one).to_param
    end

    assert_redirected_to financial_reports_path
  end
end

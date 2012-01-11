require 'test_helper'

class FormOfPaymentsControllerTest < ActionController::TestCase
  setup do
    @form_of_payment = form_of_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_of_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_of_payment" do
    assert_difference('FormOfPayment.count') do
      post :create, :form_of_payment => @form_of_payment.attributes
    end

    assert_redirected_to form_of_payment_path(assigns(:form_of_payment))
  end

  test "should show form_of_payment" do
    get :show, :id => @form_of_payment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @form_of_payment.to_param
    assert_response :success
  end

  test "should update form_of_payment" do
    put :update, :id => @form_of_payment.to_param, :form_of_payment => @form_of_payment.attributes
    assert_redirected_to form_of_payment_path(assigns(:form_of_payment))
  end

  test "should destroy form_of_payment" do
    assert_difference('FormOfPayment.count', -1) do
      delete :destroy, :id => @form_of_payment.to_param
    end

    assert_redirected_to form_of_payments_path
  end
end

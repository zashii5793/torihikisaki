require 'test_helper'

class ShiiresControllerTest < ActionController::TestCase
  setup do
    @shiire = shiires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shiires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shiire" do
    assert_difference('Shiire.count') do
      post :create, shiire: { kai_code: @shiire.kai_code, sir_code: @shiire.sir_code, sir_name: @shiire.sir_name }
    end

    assert_redirected_to shiire_path(assigns(:shiire))
  end

  test "should show shiire" do
    get :show, id: @shiire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shiire
    assert_response :success
  end

  test "should update shiire" do
    patch :update, id: @shiire, shiire: { kai_code: @shiire.kai_code, sir_code: @shiire.sir_code, sir_name: @shiire.sir_name }
    assert_redirected_to shiire_path(assigns(:shiire))
  end

  test "should destroy shiire" do
    assert_difference('Shiire.count', -1) do
      delete :destroy, id: @shiire
    end

    assert_redirected_to shiires_path
  end
end

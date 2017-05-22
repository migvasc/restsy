require 'test_helper'

class AppwebexempsControllerTest < ActionController::TestCase
  setup do
    @appwebexemp = appwebexemps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appwebexemps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appwebexemp" do
    assert_difference('Appwebexemp.count') do
      post :create, appwebexemp: { email: @appwebexemp.email, endereco: @appwebexemp.endereco, id_seq: @appwebexemp.id_seq, nome: @appwebexemp.nome, preco: @appwebexemp.preco }
    end

    assert_redirected_to appwebexemp_path(assigns(:appwebexemp))
  end

  test "should show appwebexemp" do
    get :show, id: @appwebexemp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appwebexemp
    assert_response :success
  end

  test "should update appwebexemp" do
    patch :update, id: @appwebexemp, appwebexemp: { email: @appwebexemp.email, endereco: @appwebexemp.endereco, id_seq: @appwebexemp.id_seq, nome: @appwebexemp.nome, preco: @appwebexemp.preco }
    assert_redirected_to appwebexemp_path(assigns(:appwebexemp))
  end

  test "should destroy appwebexemp" do
    assert_difference('Appwebexemp.count', -1) do
      delete :destroy, id: @appwebexemp
    end

    assert_redirected_to appwebexemps_path
  end
end

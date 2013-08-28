require 'test_helper'

class CommandesControllerTest < ActionController::TestCase
  setup do
    @commande = commandes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commandes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commande" do
    assert_difference('Commande.count') do
      post :create, commande: { cour_id: @commande.cour_id, done: @commande.done, number_o_pages: @commande.number_o_pages, user_id: @commande.user_id }
    end

    assert_redirected_to commande_path(assigns(:commande))
  end

  test "should show commande" do
    get :show, id: @commande
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commande
    assert_response :success
  end

  test "should update commande" do
    put :update, id: @commande, commande: { cour_id: @commande.cour_id, done: @commande.done, number_o_pages: @commande.number_o_pages, user_id: @commande.user_id }
    assert_redirected_to commande_path(assigns(:commande))
  end

  test "should destroy commande" do
    assert_difference('Commande.count', -1) do
      delete :destroy, id: @commande
    end

    assert_redirected_to commandes_path
  end
end

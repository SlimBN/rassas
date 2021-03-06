require 'test_helper'

class CoursControllerTest < ActionController::TestCase
  setup do
    @cour = cours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cour" do
    assert_difference('Cour.count') do
      post :create, cour: { matiere_id: @cour.matiere_id, nom: @cour.nom, professeur_id: @cour.professeur_id, slug: @cour.slug }
    end

    assert_redirected_to cour_path(assigns(:cour))
  end

  test "should show cour" do
    get :show, id: @cour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cour
    assert_response :success
  end

  test "should update cour" do
    put :update, id: @cour, cour: { matiere_id: @cour.matiere_id, nom: @cour.nom, professeur_id: @cour.professeur_id, slug: @cour.slug }
    assert_redirected_to cour_path(assigns(:cour))
  end

  test "should destroy cour" do
    assert_difference('Cour.count', -1) do
      delete :destroy, id: @cour
    end

    assert_redirected_to cours_path
  end
end

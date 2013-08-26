require 'test_helper'

class AnneesControllerTest < ActionController::TestCase
  setup do
    @annee = annees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annee" do
    assert_difference('Annee.count') do
      post :create, annee: { name: @annee.name, order: @annee.order, slug: @annee.slug, university_id: @annee.university_id }
    end

    assert_redirected_to annee_path(assigns(:annee))
  end

  test "should show annee" do
    get :show, id: @annee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annee
    assert_response :success
  end

  test "should update annee" do
    put :update, id: @annee, annee: { name: @annee.name, order: @annee.order, slug: @annee.slug, university_id: @annee.university_id }
    assert_redirected_to annee_path(assigns(:annee))
  end

  test "should destroy annee" do
    assert_difference('Annee.count', -1) do
      delete :destroy, id: @annee
    end

    assert_redirected_to annees_path
  end
end

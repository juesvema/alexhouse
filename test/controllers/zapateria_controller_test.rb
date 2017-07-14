require 'test_helper'

class ZapateriaControllerTest < ActionController::TestCase
  setup do
    @zapaterium = zapateria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zapateria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zapaterium" do
    assert_difference('Zapaterium.count') do
      post :create, zapaterium: { imagen1: @zapaterium.imagen1, imagen2: @zapaterium.imagen2, imagen: @zapaterium.imagen, nombre: @zapaterium.nombre }
    end

    assert_redirected_to zapaterium_path(assigns(:zapaterium))
  end

  test "should show zapaterium" do
    get :show, id: @zapaterium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zapaterium
    assert_response :success
  end

  test "should update zapaterium" do
    patch :update, id: @zapaterium, zapaterium: { imagen1: @zapaterium.imagen1, imagen2: @zapaterium.imagen2, imagen: @zapaterium.imagen, nombre: @zapaterium.nombre }
    assert_redirected_to zapaterium_path(assigns(:zapaterium))
  end

  test "should destroy zapaterium" do
    assert_difference('Zapaterium.count', -1) do
      delete :destroy, id: @zapaterium
    end

    assert_redirected_to zapateria_path
  end
end

require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get roles__form_url
    assert_response :success
  end

  test "should get index" do
    get roles_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get roles_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get roles_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get roles_nuevo_url
    assert_response :success
  end

  test "should get update" do
    get roles_update_url
    assert_response :success
  end

  test "should get eliminar" do
    get roles_eliminar_url
    assert_response :success
  end

end

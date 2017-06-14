require 'test_helper'

class InformesControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get informes__form_url
    assert_response :success
  end

  test "should get index" do
    get informes_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get informes_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get informes_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get informes_nuevo_url
    assert_response :success
  end

  test "should get update" do
    get informes_update_url
    assert_response :success
  end

  test "should get eliminar" do
    get informes_eliminar_url
    assert_response :success
  end

end

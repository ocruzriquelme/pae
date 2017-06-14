require 'test_helper'

class GrupoTutoriasControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get grupo_tutorias__form_url
    assert_response :success
  end

  test "should get index" do
    get grupo_tutorias_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get grupo_tutorias_mostrar_url
    assert_response :success
  end

  test "should get editar" do
    get grupo_tutorias_editar_url
    assert_response :success
  end

  test "should get nuevo" do
    get grupo_tutorias_nuevo_url
    assert_response :success
  end

  test "should get update" do
    get grupo_tutorias_update_url
    assert_response :success
  end

  test "should get eliminar" do
    get grupo_tutorias_eliminar_url
    assert_response :success
  end

end

require 'test_helper'

class PreguntasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get preguntas_index_url
    assert_response :success
  end

  test "should get mostrar" do
    get preguntas_mostrar_url
    assert_response :success
  end

  test "should get update" do
    get preguntas_update_url
    assert_response :success
  end

  test "should get crear" do
    get preguntas_crear_url
    assert_response :success
  end

  test "should get nuevo" do
    get preguntas_nuevo_url
    assert_response :success
  end

end

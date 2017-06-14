require 'test_helper'

class FichasControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get fichas__form_url
    assert_response :success
  end

  test "should get index" do
    get fichas_index_url
    assert_response :success
  end

  test "should get crear" do
    get fichas_crear_url
    assert_response :success
  end

  test "should get editar" do
    get fichas_editar_url
    assert_response :success
  end

  test "should get eliminar" do
    get fichas_eliminar_url
    assert_response :success
  end

end

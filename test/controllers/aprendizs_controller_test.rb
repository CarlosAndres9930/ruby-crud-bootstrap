require "test_helper"

class AprendizsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aprendiz = aprendizs(:one)
  end

  test "should get index" do
    get aprendizs_url
    assert_response :success
  end

  test "should get new" do
    get new_aprendiz_url
    assert_response :success
  end

  test "should create aprendiz" do
    assert_difference("Aprendiz.count") do
      post aprendizs_url, params: { aprendiz: { apellidos: @aprendiz.apellidos, correo: @aprendiz.correo, documento: @aprendiz.documento, estado: @aprendiz.estado, fecha_nacimiento: @aprendiz.fecha_nacimiento, nombres: @aprendiz.nombres } }
    end

    assert_redirected_to aprendiz_url(Aprendiz.last)
  end

  test "should show aprendiz" do
    get aprendiz_url(@aprendiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_aprendiz_url(@aprendiz)
    assert_response :success
  end

  test "should update aprendiz" do
    patch aprendiz_url(@aprendiz), params: { aprendiz: { apellidos: @aprendiz.apellidos, correo: @aprendiz.correo, documento: @aprendiz.documento, estado: @aprendiz.estado, fecha_nacimiento: @aprendiz.fecha_nacimiento, nombres: @aprendiz.nombres } }
    assert_redirected_to aprendiz_url(@aprendiz)
  end

  test "should destroy aprendiz" do
    assert_difference("Aprendiz.count", -1) do
      delete aprendiz_url(@aprendiz)
    end

    assert_redirected_to aprendizs_url
  end
end

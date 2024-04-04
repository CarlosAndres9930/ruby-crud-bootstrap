require "application_system_test_case"

class AprendizsTest < ApplicationSystemTestCase
  setup do
    @aprendiz = aprendizs(:one)
  end

  test "visiting the index" do
    visit aprendizs_url
    assert_selector "h1", text: "Aprendizs"
  end

  test "should create aprendiz" do
    visit aprendizs_url
    click_on "New aprendiz"

    fill_in "Apellidos", with: @aprendiz.apellidos
    fill_in "Correo", with: @aprendiz.correo
    fill_in "Documento", with: @aprendiz.documento
    check "Estado" if @aprendiz.estado
    fill_in "Fecha nacimiento", with: @aprendiz.fecha_nacimiento
    fill_in "Nombres", with: @aprendiz.nombres
    click_on "Create Aprendiz"

    assert_text "Aprendiz was successfully created"
    click_on "Back"
  end

  test "should update Aprendiz" do
    visit aprendiz_url(@aprendiz)
    click_on "Edit this aprendiz", match: :first

    fill_in "Apellidos", with: @aprendiz.apellidos
    fill_in "Correo", with: @aprendiz.correo
    fill_in "Documento", with: @aprendiz.documento
    check "Estado" if @aprendiz.estado
    fill_in "Fecha nacimiento", with: @aprendiz.fecha_nacimiento
    fill_in "Nombres", with: @aprendiz.nombres
    click_on "Update Aprendiz"

    assert_text "Aprendiz was successfully updated"
    click_on "Back"
  end

  test "should destroy Aprendiz" do
    visit aprendiz_url(@aprendiz)
    click_on "Destroy this aprendiz", match: :first

    assert_text "Aprendiz was successfully destroyed"
  end
end

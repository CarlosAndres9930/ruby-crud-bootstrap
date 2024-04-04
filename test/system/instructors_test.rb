require "application_system_test_case"

class InstructorsTest < ApplicationSystemTestCase
  setup do
    @instructor = instructors(:one)
  end

  test "visiting the index" do
    visit instructors_url
    assert_selector "h1", text: "Instructors"
  end

  test "should create instructor" do
    visit instructors_url
    click_on "New instructor"

    fill_in "Apellidos", with: @instructor.apellidos
    fill_in "Competencia", with: @instructor.competencia
    fill_in "Correo", with: @instructor.correo
    fill_in "Documento", with: @instructor.documento
    check "Estado" if @instructor.estado
    fill_in "Fecha nacimiento", with: @instructor.fecha_nacimiento
    fill_in "Nombres", with: @instructor.nombres
    click_on "Create Instructor"

    assert_text "Instructor was successfully created"
    click_on "Back"
  end

  test "should update Instructor" do
    visit instructor_url(@instructor)
    click_on "Edit this instructor", match: :first

    fill_in "Apellidos", with: @instructor.apellidos
    fill_in "Competencia", with: @instructor.competencia
    fill_in "Correo", with: @instructor.correo
    fill_in "Documento", with: @instructor.documento
    check "Estado" if @instructor.estado
    fill_in "Fecha nacimiento", with: @instructor.fecha_nacimiento
    fill_in "Nombres", with: @instructor.nombres
    click_on "Update Instructor"

    assert_text "Instructor was successfully updated"
    click_on "Back"
  end

  test "should destroy Instructor" do
    visit instructor_url(@instructor)
    click_on "Destroy this instructor", match: :first

    assert_text "Instructor was successfully destroyed"
  end
end

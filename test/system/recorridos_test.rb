require "application_system_test_case"

class RecorridosTest < ApplicationSystemTestCase
  setup do
    @recorrido = recorridos(:one)
  end

  test "visiting the index" do
    visit recorridos_url
    assert_selector "h1", text: "Recorridos"
  end

  test "creating a Recorrido" do
    visit recorridos_url
    click_on "New Recorrido"

    fill_in "Descripcion", with: @recorrido.descripcion
    fill_in "Sitios", with: @recorrido.sitios
    click_on "Create Recorrido"

    assert_text "Recorrido was successfully created"
    click_on "Back"
  end

  test "updating a Recorrido" do
    visit recorridos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @recorrido.descripcion
    fill_in "Sitios", with: @recorrido.sitios
    click_on "Update Recorrido"

    assert_text "Recorrido was successfully updated"
    click_on "Back"
  end

  test "destroying a Recorrido" do
    visit recorridos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recorrido was successfully destroyed"
  end
end

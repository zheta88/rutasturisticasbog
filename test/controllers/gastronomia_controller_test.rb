require 'test_helper'

class GastronomiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gastronomium = gastronomia(:one)
  end

  test "should get index" do
    get gastronomia_url
    assert_response :success
  end

  test "should get new" do
    get new_gastronomium_url
    assert_response :success
  end

  test "should create gastronomium" do
    assert_difference('Gastronomium.count') do
      post gastronomia_url, params: { gastronomium: { descripcion: @gastronomium.descripcion, imagen: @gastronomium.imagen, plato: @gastronomium.plato } }
    end

    assert_redirected_to gastronomium_url(Gastronomium.last)
  end

  test "should show gastronomium" do
    get gastronomium_url(@gastronomium)
    assert_response :success
  end

  test "should get edit" do
    get edit_gastronomium_url(@gastronomium)
    assert_response :success
  end

  test "should update gastronomium" do
    patch gastronomium_url(@gastronomium), params: { gastronomium: { descripcion: @gastronomium.descripcion, imagen: @gastronomium.imagen, plato: @gastronomium.plato } }
    assert_redirected_to gastronomium_url(@gastronomium)
  end

  test "should destroy gastronomium" do
    assert_difference('Gastronomium.count', -1) do
      delete gastronomium_url(@gastronomium)
    end

    assert_redirected_to gastronomia_url
  end
end

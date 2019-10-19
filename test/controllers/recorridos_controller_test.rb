require 'test_helper'

class RecorridosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recorrido = recorridos(:one)
  end

  test "should get index" do
    get recorridos_url
    assert_response :success
  end

  test "should get new" do
    get new_recorrido_url
    assert_response :success
  end

  test "should create recorrido" do
    assert_difference('Recorrido.count') do
      post recorridos_url, params: { recorrido: { descripcion: @recorrido.descripcion, sitios: @recorrido.sitios } }
    end

    assert_redirected_to recorrido_url(Recorrido.last)
  end

  test "should show recorrido" do
    get recorrido_url(@recorrido)
    assert_response :success
  end

  test "should get edit" do
    get edit_recorrido_url(@recorrido)
    assert_response :success
  end

  test "should update recorrido" do
    patch recorrido_url(@recorrido), params: { recorrido: { descripcion: @recorrido.descripcion, sitios: @recorrido.sitios } }
    assert_redirected_to recorrido_url(@recorrido)
  end

  test "should destroy recorrido" do
    assert_difference('Recorrido.count', -1) do
      delete recorrido_url(@recorrido)
    end

    assert_redirected_to recorridos_url
  end
end

require 'test_helper'

class AdvertenciasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advertencia = advertencias(:one)
  end

  test "should get index" do
    get advertencias_url
    assert_response :success
  end

  test "should get new" do
    get new_advertencia_url
    assert_response :success
  end

  test "should create advertencia" do
    assert_difference('Advertencia.count') do
      post advertencias_url, params: { advertencia: { advdate: @advertencia.advdate, datetime: @advertencia.datetime, reason: @advertencia.reason } }
    end

    assert_redirected_to advertencia_url(Advertencia.last)
  end

  test "should show advertencia" do
    get advertencia_url(@advertencia)
    assert_response :success
  end

  test "should get edit" do
    get edit_advertencia_url(@advertencia)
    assert_response :success
  end

  test "should update advertencia" do
    patch advertencia_url(@advertencia), params: { advertencia: { advdate: @advertencia.advdate, datetime: @advertencia.datetime, reason: @advertencia.reason } }
    assert_redirected_to advertencia_url(@advertencia)
  end

  test "should destroy advertencia" do
    assert_difference('Advertencia.count', -1) do
      delete advertencia_url(@advertencia)
    end

    assert_redirected_to advertencias_url
  end
end

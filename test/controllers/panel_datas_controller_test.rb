require 'test_helper'

class PanelDatasControllerTest < ActionController::TestCase
  setup do
    @panel_data = panel_datas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panel_datas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panel_data" do
    assert_difference('PanelData.count') do
      post :create, panel_data: { name: @panel_data.name, panel_id: @panel_data.panel_id }
    end

    assert_redirected_to panel_data_path(assigns(:panel_data))
  end

  test "should show panel_data" do
    get :show, id: @panel_data
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panel_data
    assert_response :success
  end

  test "should update panel_data" do
    patch :update, id: @panel_data, panel_data: { name: @panel_data.name, panel_id: @panel_data.panel_id }
    assert_redirected_to panel_data_path(assigns(:panel_data))
  end

  test "should destroy panel_data" do
    assert_difference('PanelData.count', -1) do
      delete :destroy, id: @panel_data
    end

    assert_redirected_to panel_datas_path
  end
end

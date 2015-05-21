require 'test_helper'

class FullTimePositionsControllerTest < ActionController::TestCase
  setup do
    @full_time_position = full_time_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:full_time_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create full_time_position" do
    assert_difference('FullTimePosition.count') do
      post :create, full_time_position: { company: @full_time_position.company, link: @full_time_position.link, position: @full_time_position.position }
    end

    assert_redirected_to full_time_position_path(assigns(:full_time_position))
  end

  test "should show full_time_position" do
    get :show, id: @full_time_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @full_time_position
    assert_response :success
  end

  test "should update full_time_position" do
    patch :update, id: @full_time_position, full_time_position: { company: @full_time_position.company, link: @full_time_position.link, position: @full_time_position.position }
    assert_redirected_to full_time_position_path(assigns(:full_time_position))
  end

  test "should destroy full_time_position" do
    assert_difference('FullTimePosition.count', -1) do
      delete :destroy, id: @full_time_position
    end

    assert_redirected_to full_time_positions_path
  end
end

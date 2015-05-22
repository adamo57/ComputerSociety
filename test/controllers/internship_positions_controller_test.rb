require 'test_helper'

class InternshipPositionsControllerTest < ActionController::TestCase
  setup do
    @internship_position = internship_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internship_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internship_position" do
    assert_difference('InternshipPosition.count') do
      post :create, internship_position: { company: @internship_position.company, link: @internship_position.link, position: @internship_position.position }
    end

    assert_redirected_to internship_position_path(assigns(:internship_position))
  end

  test "should show internship_position" do
    get :show, id: @internship_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @internship_position
    assert_response :success
  end

  test "should update internship_position" do
    patch :update, id: @internship_position, internship_position: { company: @internship_position.company, link: @internship_position.link, position: @internship_position.position }
    assert_redirected_to internship_position_path(assigns(:internship_position))
  end

  test "should destroy internship_position" do
    assert_difference('InternshipPosition.count', -1) do
      delete :destroy, id: @internship_position
    end

    assert_redirected_to internship_positions_path
  end
end

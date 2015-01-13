require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get careers" do
    get :careers
    assert_response :success
  end

  test "should get internships" do
    get :internships
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

end

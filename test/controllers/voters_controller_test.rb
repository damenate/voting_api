require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  def test_authentication_you_are_voter
    v1 = Voter.create(name: "Leonardo", party: "TMNT" id:param([param]))
  end
end

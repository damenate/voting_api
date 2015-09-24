require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    refute_response :success
  end

  test "should get update" do
    get :update
    refute_response :success
  end

  def test_authentication_you_are_voter
    v = Voter.create(name:"Batman")
    assert v
  end

  # def test_voter_has_one_vote
  #   get :create
  #
  # end
end

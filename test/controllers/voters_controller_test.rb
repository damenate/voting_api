require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show, id: voters(:one).id, access_token: voters(:one).access_token
    assert_response :success

    assert response.body.include?("James")
  end

  test "should get update" do
    patch :update, id: voters(:one).id, access_token: voters(:one).access_token, party: "Dog"

    assert_response :success
  end

  # test "show requires correct token" do
  #   get :show, id: voters(:james).id, access_token: voters(:james).access_token
  #   assert_response :success
  #
  #   assert response.body.include?("James")
  #   assert response.body.include?("Ed")
  # end
  # test "show update works" do
  #   patch :update, id: voters(:james).id, access_token: voters(:james).access_token, name: "John"
  #   assert_response :success
  #
  #   refute response.body.include?("James")
  #   assert response.body.include?("John")
  #   assert response.body.include?voters(:james).party
  # end
  #
  # test "show update needs correct name" do
  #   patch :update, id: voters(:james).id, access_token: voters(:james).access_token, name: voters(:ed).name
  #   assert_response :success
  #
  #   assert response.body.include?voters("No Update for YOU!")
  # end

end

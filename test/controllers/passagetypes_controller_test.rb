require "test_helper"

class PassagetypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @passagetype = passagetypes(:one)
  end

  test "should get index" do
    get passagetypes_url
    assert_response :success
  end

  test "should get new" do
    get new_passagetype_url
    assert_response :success
  end

  test "should create passagetype" do
    assert_difference("Passagetype.count") do
      post passagetypes_url, params: { passagetype: { content: @passagetype.content, title: @passagetype.title } }
    end

    assert_redirected_to passagetype_url(Passagetype.last)
  end

  test "should show passagetype" do
    get passagetype_url(@passagetype)
    assert_response :success
  end

  test "should get edit" do
    get edit_passagetype_url(@passagetype)
    assert_response :success
  end

  test "should update passagetype" do
    patch passagetype_url(@passagetype), params: { passagetype: { content: @passagetype.content, title: @passagetype.title } }
    assert_redirected_to passagetype_url(@passagetype)
  end

  test "should destroy passagetype" do
    assert_difference("Passagetype.count", -1) do
      delete passagetype_url(@passagetype)
    end

    assert_redirected_to passagetypes_url
  end
end

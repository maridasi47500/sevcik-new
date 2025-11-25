require "application_system_test_case"

class PassagetypesTest < ApplicationSystemTestCase
  setup do
    @passagetype = passagetypes(:one)
  end

  test "visiting the index" do
    visit passagetypes_url
    assert_selector "h1", text: "Passagetypes"
  end

  test "should create passagetype" do
    visit passagetypes_url
    click_on "New passagetype"

    fill_in "Content", with: @passagetype.content
    fill_in "Title", with: @passagetype.title
    click_on "Create Passagetype"

    assert_text "Passagetype was successfully created"
    click_on "Back"
  end

  test "should update Passagetype" do
    visit passagetype_url(@passagetype)
    click_on "Edit this passagetype", match: :first

    fill_in "Content", with: @passagetype.content
    fill_in "Title", with: @passagetype.title
    click_on "Update Passagetype"

    assert_text "Passagetype was successfully updated"
    click_on "Back"
  end

  test "should destroy Passagetype" do
    visit passagetype_url(@passagetype)
    click_on "Destroy this passagetype", match: :first

    assert_text "Passagetype was successfully destroyed"
  end
end

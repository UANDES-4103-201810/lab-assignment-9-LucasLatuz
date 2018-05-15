require "application_system_test_case"

class ActormoviesTest < ApplicationSystemTestCase
  setup do
    @actormovie = actormovies(:one)
  end

  test "visiting the index" do
    visit actormovies_url
    assert_selector "h1", text: "Actormovies"
  end

  test "creating a Actormovie" do
    visit actormovies_url
    click_on "New Actormovie"

    fill_in "Actor", with: @actormovie.actor_id
    fill_in "Movie", with: @actormovie.movie_id
    fill_in "Role", with: @actormovie.role
    click_on "Create Actormovie"

    assert_text "Actormovie was successfully created"
    click_on "Back"
  end

  test "updating a Actormovie" do
    visit actormovies_url
    click_on "Edit", match: :first

    fill_in "Actor", with: @actormovie.actor_id
    fill_in "Movie", with: @actormovie.movie_id
    fill_in "Role", with: @actormovie.role
    click_on "Update Actormovie"

    assert_text "Actormovie was successfully updated"
    click_on "Back"
  end

  test "destroying a Actormovie" do
    visit actormovies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actormovie was successfully destroyed"
  end
end

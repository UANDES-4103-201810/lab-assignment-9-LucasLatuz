require 'test_helper'

class ActormoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actormovie = actormovies(:one)
  end

  test "should get index" do
    get actormovies_url
    assert_response :success
  end

  test "should get new" do
    get new_actormovie_url
    assert_response :success
  end

  test "should create actormovie" do
    assert_difference('Actormovie.count') do
      post actormovies_url, params: { actormovie: { actor_id: @actormovie.actor_id, movie_id: @actormovie.movie_id, role: @actormovie.role } }
    end

    assert_redirected_to actormovie_url(Actormovie.last)
  end

  test "should show actormovie" do
    get actormovie_url(@actormovie)
    assert_response :success
  end

  test "should get edit" do
    get edit_actormovie_url(@actormovie)
    assert_response :success
  end

  test "should update actormovie" do
    patch actormovie_url(@actormovie), params: { actormovie: { actor_id: @actormovie.actor_id, movie_id: @actormovie.movie_id, role: @actormovie.role } }
    assert_redirected_to actormovie_url(@actormovie)
  end

  test "should destroy actormovie" do
    assert_difference('Actormovie.count', -1) do
      delete actormovie_url(@actormovie)
    end

    assert_redirected_to actormovies_url
  end
end

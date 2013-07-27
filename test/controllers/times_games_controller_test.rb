require 'test_helper'

class TimesGamesControllerTest < ActionController::TestCase
  setup do
    @times_game = times_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:times_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create times_game" do
    assert_difference('TimesGame.count') do
      post :create, times_game: { point: @times_game.point, sta: @times_game.sta }
    end

    assert_redirected_to times_game_path(assigns(:times_game))
  end

  test "should show times_game" do
    get :show, id: @times_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @times_game
    assert_response :success
  end

  test "should update times_game" do
    patch :update, id: @times_game, times_game: { point: @times_game.point, sta: @times_game.sta }
    assert_redirected_to times_game_path(assigns(:times_game))
  end

  test "should destroy times_game" do
    assert_difference('TimesGame.count', -1) do
      delete :destroy, id: @times_game
    end

    assert_redirected_to times_games_path
  end
end

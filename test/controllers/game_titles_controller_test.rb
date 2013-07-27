require 'test_helper'

class GameTitlesControllerTest < ActionController::TestCase
  setup do
    @game_title = game_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_title" do
    assert_difference('GameTitle.count') do
      post :create, game_title: { title: @game_title.title }
    end

    assert_redirected_to game_title_path(assigns(:game_title))
  end

  test "should show game_title" do
    get :show, id: @game_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_title
    assert_response :success
  end

  test "should update game_title" do
    patch :update, id: @game_title, game_title: { title: @game_title.title }
    assert_redirected_to game_title_path(assigns(:game_title))
  end

  test "should destroy game_title" do
    assert_difference('GameTitle.count', -1) do
      delete :destroy, id: @game_title
    end

    assert_redirected_to game_titles_path
  end
end

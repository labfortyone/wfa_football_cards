require 'test_helper'

class CodePlayersControllerTest < ActionController::TestCase
  setup do
    @code_player = code_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_player" do
    assert_difference('CodePlayer.count') do
      post :create, code_player: { code_id: @code_player.code_id, player_id: @code_player.player_id }
    end

    assert_redirected_to code_player_path(assigns(:code_player))
  end

  test "should show code_player" do
    get :show, id: @code_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_player
    assert_response :success
  end

  test "should update code_player" do
    patch :update, id: @code_player, code_player: { code_id: @code_player.code_id, player_id: @code_player.player_id }
    assert_redirected_to code_player_path(assigns(:code_player))
  end

  test "should destroy code_player" do
    assert_difference('CodePlayer.count', -1) do
      delete :destroy, id: @code_player
    end

    assert_redirected_to code_players_path
  end
end

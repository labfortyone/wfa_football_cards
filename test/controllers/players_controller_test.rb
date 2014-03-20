require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { ball_manipulation: @player.ball_manipulation, dribbling: @player.dribbling, injury: @player.injury, name: @player.name, pass: @player.pass, positioning: @player.positioning, speed: @player.speed, steals: @player.steals, team_id: @player.team_id, trickery: @player.trickery, type_player: @player.type_player }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { ball_manipulation: @player.ball_manipulation, dribbling: @player.dribbling, injury: @player.injury, name: @player.name, pass: @player.pass, positioning: @player.positioning, speed: @player.speed, steals: @player.steals, team_id: @player.team_id, trickery: @player.trickery, type_player: @player.type_player }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end

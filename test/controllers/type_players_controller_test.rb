require 'test_helper'

class TypePlayersControllerTest < ActionController::TestCase
  setup do
    @type_player = type_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_player" do
    assert_difference('TypePlayer.count') do
      post :create, type_player: { name: @type_player.name }
    end

    assert_redirected_to type_player_path(assigns(:type_player))
  end

  test "should show type_player" do
    get :show, id: @type_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_player
    assert_response :success
  end

  test "should update type_player" do
    patch :update, id: @type_player, type_player: { name: @type_player.name }
    assert_redirected_to type_player_path(assigns(:type_player))
  end

  test "should destroy type_player" do
    assert_difference('TypePlayer.count', -1) do
      delete :destroy, id: @type_player
    end

    assert_redirected_to type_players_path
  end
end

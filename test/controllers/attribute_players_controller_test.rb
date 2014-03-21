require 'test_helper'

class AttributePlayersControllerTest < ActionController::TestCase
  setup do
    @attribute_player = attribute_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attribute_player" do
    assert_difference('AttributePlayer.count') do
      post :create, attribute_player: { attribute_id: @attribute_player.attribute_id, player_id: @attribute_player.player_id, value: @attribute_player.value }
    end

    assert_redirected_to attribute_player_path(assigns(:attribute_player))
  end

  test "should show attribute_player" do
    get :show, id: @attribute_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attribute_player
    assert_response :success
  end

  test "should update attribute_player" do
    patch :update, id: @attribute_player, attribute_player: { attribute_id: @attribute_player.attribute_id, player_id: @attribute_player.player_id, value: @attribute_player.value }
    assert_redirected_to attribute_player_path(assigns(:attribute_player))
  end

  test "should destroy attribute_player" do
    assert_difference('AttributePlayer.count', -1) do
      delete :destroy, id: @attribute_player
    end

    assert_redirected_to attribute_players_path
  end
end

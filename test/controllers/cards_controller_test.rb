require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { attribute_enhanced: @card.attribute_enhanced, coach_lvl_required: @card.coach_lvl_required, code: @card.code, description: @card.description, name: @card.name, qtd_enhanced: @card.qtd_enhanced, rarity: @card.rarity, type_player: @card.type_player, unique_use: @card.unique_use }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { attribute_enhanced: @card.attribute_enhanced, coach_lvl_required: @card.coach_lvl_required, code: @card.code, description: @card.description, name: @card.name, qtd_enhanced: @card.qtd_enhanced, rarity: @card.rarity, type_player: @card.type_player, unique_use: @card.unique_use }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end

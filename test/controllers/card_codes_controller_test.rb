require 'test_helper'

class CardCodesControllerTest < ActionController::TestCase
  setup do
    @card_code = card_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:card_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card_code" do
    assert_difference('CardCode.count') do
      post :create, card_code: { card_id: @card_code.card_id, code: @card_code.code }
    end

    assert_redirected_to card_code_path(assigns(:card_code))
  end

  test "should show card_code" do
    get :show, id: @card_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card_code
    assert_response :success
  end

  test "should update card_code" do
    patch :update, id: @card_code, card_code: { card_id: @card_code.card_id, code: @card_code.code }
    assert_redirected_to card_code_path(assigns(:card_code))
  end

  test "should destroy card_code" do
    assert_difference('CardCode.count', -1) do
      delete :destroy, id: @card_code
    end

    assert_redirected_to card_codes_path
  end
end

require 'test_helper'

class CodeTeamsControllerTest < ActionController::TestCase
  setup do
    @code_team = code_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_team" do
    assert_difference('CodeTeam.count') do
      post :create, code_team: { code_id: @code_team.code_id, team_id: @code_team.team_id }
    end

    assert_redirected_to code_team_path(assigns(:code_team))
  end

  test "should show code_team" do
    get :show, id: @code_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_team
    assert_response :success
  end

  test "should update code_team" do
    patch :update, id: @code_team, code_team: { code_id: @code_team.code_id, team_id: @code_team.team_id }
    assert_redirected_to code_team_path(assigns(:code_team))
  end

  test "should destroy code_team" do
    assert_difference('CodeTeam.count', -1) do
      delete :destroy, id: @code_team
    end

    assert_redirected_to code_teams_path
  end
end

module PlayersHelper
  def current_team
    Team.all.where("user_id = ?", current_user.id).first
  end
end

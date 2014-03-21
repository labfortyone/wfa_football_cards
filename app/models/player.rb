class Player < ActiveRecord::Base
    belongs_to :team
before_save :default_values
  def default_values
    self.team_id ||= Team.all.where("user_id = ?", current_user.id).first.id
  end

end

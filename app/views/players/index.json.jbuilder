json.array!(@players) do |player|
  json.extract! player, :id, :team_id, :name, :type_player, :ball_manipulation, :dribbling, :injury, :pass, :positioning, :speed, :steals, :trickery
  json.url player_url(player, format: :json)
end

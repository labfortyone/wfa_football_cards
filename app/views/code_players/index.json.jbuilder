json.array!(@code_players) do |code_player|
  json.extract! code_player, :id, :code_id, :player_id
  json.url code_player_url(code_player, format: :json)
end

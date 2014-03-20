json.array!(@type_players) do |type_player|
  json.extract! type_player, :id, :name
  json.url type_player_url(type_player, format: :json)
end

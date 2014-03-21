json.array!(@attribute_players) do |attribute_player|
  json.extract! attribute_player, :id, :attribute_id, :player_id, :value
  json.url attribute_player_url(attribute_player, format: :json)
end

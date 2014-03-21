json.array!(@cards) do |card|
  json.extract! card, :id, :name, :type_player, :attribute_enhanced, :qtd_enhanced, :description, :code, :rarity, :unique_use, :coach_lvl_required
  json.url card_url(card, format: :json)
end

json.array!(@card_codes) do |card_code|
  json.extract! card_code, :id, :card_id, :code
  json.url card_code_url(card_code, format: :json)
end

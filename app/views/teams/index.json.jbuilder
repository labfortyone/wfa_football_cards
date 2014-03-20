json.array!(@teams) do |team|
  json.extract! team, :id, :team_name, :coach_name, :age
  json.url team_url(team, format: :json)
end

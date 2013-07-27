json.array!(@times_games) do |times_game|
  json.extract! times_game, :point, :sta
  json.url times_game_url(times_game, format: :json)
end

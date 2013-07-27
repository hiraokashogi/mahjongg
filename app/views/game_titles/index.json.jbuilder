json.array!(@game_titles) do |game_title|
  json.extract! game_title, :title
  json.url game_title_url(game_title, format: :json)
end

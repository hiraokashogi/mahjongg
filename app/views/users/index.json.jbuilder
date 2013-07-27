json.array!(@users) do |user|
  json.extract! user, :name, :it_parent
  json.url user_url(user, format: :json)
end

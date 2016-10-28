json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :defaultBid
  json.url user_url(user, format: :json)
end

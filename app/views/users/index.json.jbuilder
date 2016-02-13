json.array!(@users) do |user|
  json.extract! user, :id, :usernamfold, :user, :username
  json.url user_url(user, format: :json)
end

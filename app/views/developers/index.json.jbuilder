json.array!(@developers) do |developer|
  json.extract! developer, :id, :name, :email, :ip_add, :github_user, :skills, :nd
  json.url developer_url(developer, format: :json)
end

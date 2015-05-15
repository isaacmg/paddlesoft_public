json.array!(@possibles) do |possible|
  json.extract! possible, :id, :name, :email, :ip_add, :receive
  json.url possible_url(possible, format: :json)
end

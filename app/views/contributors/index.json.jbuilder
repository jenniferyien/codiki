json.array!(@contributors) do |contributor|
  json.extract! contributor, :id, :first_name, :last_name, :email, :password
  json.url contributor_url(contributor, format: :json)
end

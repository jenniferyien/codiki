json.array!(@categories) do |category|
  json.extract! category, :id, :title, :summary
  json.url category_url(category, format: :json)
end

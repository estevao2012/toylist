json.array!(@toys) do |toy|
  json.extract! toy, :id, :name, :description, :animal
  json.url toy_url(toy, format: :json)
end

json.array!(@toytypes) do |toytype|
  json.extract! toytype, :id, :toytype, :description
  json.url toytype_url(toytype, format: :json)
end

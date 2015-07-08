json.array!(@backgrounds) do |background|
  json.extract! background, :id, :image, :active
  json.url background_url(background, format: :json)
end

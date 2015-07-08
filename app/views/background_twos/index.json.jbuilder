json.array!(@background_twos) do |background_two|
  json.extract! background_two, :id, :image, :active
  json.url background_two_url(background_two, format: :json)
end

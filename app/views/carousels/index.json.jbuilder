json.array!(@carousels) do |carousel|
  json.extract! carousel, :id, :image, :active
  json.url carousel_url(carousel, format: :json)
end

json.array!(@rosters) do |roster|
  json.extract! roster, :id, :name, :url
  json.url roster_url(roster, format: :json)
end

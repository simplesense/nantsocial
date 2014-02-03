json.array!(@members) do |member|
  json.extract! member, :id, :description
  json.url member_url(member, format: :json)
end

json.array!(@ramblings) do |rambling|
  json.extract! rambling, :id, :description
  json.url rambling_url(rambling, format: :json)
end

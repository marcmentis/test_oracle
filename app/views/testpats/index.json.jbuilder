json.array!(@testpats) do |testpat|
  json.extract! testpat, :id, :firstname, :lastname, :identifier
  json.url testpat_url(testpat, format: :json)
end

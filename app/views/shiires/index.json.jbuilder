json.array!(@shiires) do |shiire|
  json.extract! shiire, :id, :kai_code, :sir_code, :sir_name
  json.url shiire_url(shiire, format: :json)
end

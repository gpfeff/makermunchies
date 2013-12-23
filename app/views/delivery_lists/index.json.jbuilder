json.array!(@delivery_lists) do |delivery_list|
  json.extract! delivery_list, :id
  json.url delivery_list_url(delivery_list, format: :json)
end

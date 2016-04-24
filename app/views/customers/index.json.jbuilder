json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :age, :address, :phnum
  json.url customer_url(customer, format: :json)
end

json.array!(@services) do |service|
  json.extract! service, :id, :from, :to, :day, :driver, :user_id
  json.url service_url(service, format: :json)
end

json.array!(@calls) do |call|
  json.extract! call, :id, :date, :type_webhook, :domain, :apiURL, :obfuscated_secret
  json.url call_url(call, format: :json)
end

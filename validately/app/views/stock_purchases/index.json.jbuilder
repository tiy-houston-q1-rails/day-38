json.array!(@stock_purchases) do |stock_purchase|
  json.extract! stock_purchase, :id, :symbol, :quantity, :price
  json.url stock_purchase_url(stock_purchase, format: :json)
end

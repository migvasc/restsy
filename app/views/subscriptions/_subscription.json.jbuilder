json.extract! subscription, :id, :customer_id, :menu_id, :active, :boolean, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
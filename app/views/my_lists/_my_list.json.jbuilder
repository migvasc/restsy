json.extract! my_list, :id, :user_id, :query, :created_at, :updated_at
json.url my_list_url(my_list, format: :json)
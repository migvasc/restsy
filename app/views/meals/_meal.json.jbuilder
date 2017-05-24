json.extract! meal, :id, :name, :foods, :calories, :description, :created_at, :updated_at
json.url meal_url(meal, format: :json)
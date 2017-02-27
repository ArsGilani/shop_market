json.extract! admin_category, :id, :name, :description, :parent_category_id, :created_at, :updated_at
json.url admin_category_url(admin_category, format: :json)
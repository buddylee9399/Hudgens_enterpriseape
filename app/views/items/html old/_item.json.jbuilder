json.extract! item, :id, :name, :quantity, :category, :invoice_id, :created_at, :updated_at
json.url item_url(item, format: :json)

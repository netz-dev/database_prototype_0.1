json.extract! client_company, :id, :company_name, :street_address, :state, :postal_code, :city, :country, :created_at, :updated_at
json.url client_company_url(client_company, format: :json)

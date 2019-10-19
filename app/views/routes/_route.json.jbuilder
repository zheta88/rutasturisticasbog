json.extract! route, :id, :nombre, :descripcion, :created_at, :updated_at
json.url route_url(route, format: :json)

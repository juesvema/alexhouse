json.extract! noti, :id, :imagen, :titulo, :contenido, :categoria, :created_at, :updated_at
json.url noti_url(noti, format: :json)
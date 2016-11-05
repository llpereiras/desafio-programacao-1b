json.extract! upload, :id, :arquivo, :status, :created_at, :updated_at
json.url upload_url(upload, format: :json)
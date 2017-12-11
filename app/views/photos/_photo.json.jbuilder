json.extract! photo, :id, :sector_id, :imag_type, :description, :created_at, :updated_at
json.url photo_url(photo, format: :json)

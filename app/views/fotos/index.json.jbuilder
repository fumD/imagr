json.array!(@fotos) do |foto|
  json.extract! foto, :id, :description, :image
  json.url foto_url(foto, format: :json)
end

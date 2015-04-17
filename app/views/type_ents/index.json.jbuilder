json.array!(@type_ents) do |type_ent|
  json.extract! type_ent, :id, :initial, :description
  json.url type_ent_url(type_ent, format: :json)
end

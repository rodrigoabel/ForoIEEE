json.array!(@temas) do |tema|
  json.extract! tema, :id, :usuario_id, :titulo, :resena, :tag_id, :like
  json.url tema_url(tema, format: :json)
end

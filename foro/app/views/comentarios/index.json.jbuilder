json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :usuario_id, :tema_id, :comentario, :fecha, :like
  json.url comentario_url(comentario, format: :json)
end

json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :password, :correo, :firma, :username, :numeromiembro
  json.url usuario_url(usuario, format: :json)
end

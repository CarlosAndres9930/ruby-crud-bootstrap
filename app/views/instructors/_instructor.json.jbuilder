json.extract! instructor, :id, :documento, :nombres, :apellidos, :correo, :estado, :fecha_nacimiento, :competencia, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)

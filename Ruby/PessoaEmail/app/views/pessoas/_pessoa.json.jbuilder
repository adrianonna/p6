json.extract! pessoa, :id, :nome, :data_nascimento, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)

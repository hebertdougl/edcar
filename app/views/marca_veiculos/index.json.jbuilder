json.array!(@marca_veiculos) do |marca_veiculo|
  json.extract! marca_veiculo, :id, :nome
  json.url marca_veiculo_url(marca_veiculo, format: :json)
end

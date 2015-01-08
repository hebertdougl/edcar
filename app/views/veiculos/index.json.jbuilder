json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :modelo, :marca_veiculo_id
  json.url veiculo_url(veiculo, format: :json)
end

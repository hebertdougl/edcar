json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :placa, :marca, :modelo, :ano, :quilometragem
  json.url veiculo_url(veiculo, format: :json)
end

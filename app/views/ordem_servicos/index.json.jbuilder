json.array!(@ordem_servicos) do |ordem_servico|
  json.extract! ordem_servico, :id, :numero, :data, :valor, :placa, :quilometragem, :garantia, :pecas, :descricao, :veiculo_id, :cliente_id
  json.url ordem_servico_url(ordem_servico, format: :json)
end

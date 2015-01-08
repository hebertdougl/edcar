json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome_cliente, :cpf, :rg, :telefone_celular, :telefone_residencial, :email, :endereco
  json.url cliente_url(cliente, format: :json)
end

class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string   :nome_cliente
      t.string   :cpf
      t.string   :rg
      t.string   :telefone_celular
      t.string   :telefone_residencial
      t.string   :email
      t.string   :endereco
      t.timestamps
    end
  end
end

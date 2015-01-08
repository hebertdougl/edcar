class CreateOrdemServicos < ActiveRecord::Migration
  def change
    create_table :ordem_servicos do |t|
      t.string :numero
      t.string :data
      t.string :valor
      t.string :placa
      t.string :quilometragem
      t.string :garantia
      t.string :pecas
      t.string :descricao
      t.integer :veiculo_id
      t.integer :cliente_id

      t.timestamps
    end
  end
end

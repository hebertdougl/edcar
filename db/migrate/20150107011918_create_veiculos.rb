class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string   :modelo
      t.integer  :marca_veiculo_id
      t.timestamps
    end
  end
end

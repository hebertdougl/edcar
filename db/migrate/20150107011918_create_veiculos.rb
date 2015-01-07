class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :marca
      t.string :modelo
      t.date :ano
      t.string :quilometragem

      t.timestamps
    end
  end
end

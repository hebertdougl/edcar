class RemoveColumnsTableVeiculo < ActiveRecord::Migration
  def self.up
    remove_column :veiculos, :placa
    remove_column :veiculos, :marca
    remove_column :veiculos, :ano
    remove_column :veiculos, :quilometragem
  end
 
  def self.down
  	add_column :veiculos, :placa
    add_column :veiculos, :marca
    add_column :veiculos, :ano
    add_column :veiculos, :quilometragem	
  end
end
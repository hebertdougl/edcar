class AddAssociationMarcaVeiculo < ActiveRecord::Migration
  def self.up
    add_column :veiculos, :id_marca, :integer
  end
 
  def self.down
    remove_column :veiculos, :id_marca
  end
end

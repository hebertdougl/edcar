class AddAssociationVeiculoOs < ActiveRecord::Migration
  def self.up
    add_column :ordem_servicos, :id_veiculos, :integer
  end
 
  def self.down
    remove_column :ordem_servicos, :id_veiculos
  end
end

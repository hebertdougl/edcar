class AddColumn < ActiveRecord::Migration
  def self.up
    add_column :ordem_servicos, :cliente, :integer
  end
 
  def self.down
    remove_column :ordem_servicos, :cliente
  end
end

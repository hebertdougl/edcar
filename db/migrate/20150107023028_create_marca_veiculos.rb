class CreateMarcaVeiculos < ActiveRecord::Migration
  def change
    create_table :marca_veiculos do |t|
  	  t.string   :nome
      t.timestamps
    end
  end
end

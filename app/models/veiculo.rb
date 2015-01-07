class Veiculo < ActiveRecord::Base
	has_one :marca_veiculo
	belongs_to :ordem_servico
end

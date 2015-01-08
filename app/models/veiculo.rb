class Veiculo < ActiveRecord::Base
	belongs_to :marca_veiculo
	has_many   :ordem_servico
end

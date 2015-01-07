class OrdemServico < ActiveRecord::Base
	has_one :clientes
	has_one :veiculo
end

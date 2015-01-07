class OrdemServico < ActiveRecord::Base
	has_one :clientes
end

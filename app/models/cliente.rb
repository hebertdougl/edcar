class Cliente < ActiveRecord::Base
	has_one :ordem_servico
end

class Carro < ApplicationRecord
  belongs_to :classe
  belongs_to :marca
  belongs_to :cor
  belongs_to :preco
end

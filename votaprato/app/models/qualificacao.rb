class Qualificacao < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :restaurante
end

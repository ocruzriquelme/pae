class Priorizacion < ApplicationRecord
  self.table_name = 'priorizaciones'
  has_many :estudiantes
end

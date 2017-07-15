class AsignaturaCursada < ApplicationRecord
  belongs_to :estudiante
  has_many :asignaturas
end

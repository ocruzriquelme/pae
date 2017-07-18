class AsignaturaCursada < ApplicationRecord
  belongs_to :estudiante
  belongs_to :asignatura
end

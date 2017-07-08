class GrupoTutor < ApplicationRecord
  self.table_name = 'grupo_tutores'
  belongs_to :estudiante
  has_many :grupo_tutorados
  accepts_nested_attributes_for :grupo_tutorados, allow_destroy: true
end

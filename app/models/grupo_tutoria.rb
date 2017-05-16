class GrupoTutoria < ApplicationRecord
  self.table_name = 'grupo_tutorias'
  belongs_to :usuario
  has_many :estudiante
  validates :coordinador, presence: true
  validates :tutor, presence: true
  validates :tutorado, presence: true
end

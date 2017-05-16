class Respuesta < ApplicationRecord
  self.table_name = 'respuestas'
  belongs_to :informe
  has_many :pregunta
  validates :pregunta, presence: true
  validates :informe, presence: true
  validates :respuesta, presence: true
  validates :tutorado, presence: true
end

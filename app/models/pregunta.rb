class Pregunta < ApplicationRecord
  self.table_name = 'preguntas'
  has_many :respuestas
  has_many :informe
  validates :pregunta, presence: true
end

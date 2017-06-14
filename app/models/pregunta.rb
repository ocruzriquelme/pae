class Pregunta < ApplicationRecord
  self.table_name = 'preguntas'
  has_many :respuestas
  validates :pregunta, presence: true
end

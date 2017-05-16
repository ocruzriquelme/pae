class Pregunta < ApplicationRecord
  self.table_name = 'preguntas'
  belongs_to :respuesta
  validates :pregunta, presence: true
end

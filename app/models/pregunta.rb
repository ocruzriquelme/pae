class Pregunta < ApplicationRecord
  self.table_name = 'preguntas'
  has_many :respuestas
  belongs_to :informe
  validates :pregunta, presence: true
end

class Informe < ApplicationRecord
  belongs_to :estudiante
  has_many :respuesta
  validates :estado, numericality: true
  validates :fecha, numericality: true
  validates :tutor, presence: true
end

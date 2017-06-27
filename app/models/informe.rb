class Informe < ApplicationRecord
  belongs_to :estudiante
  has_many :preguntas
  accepts_nested_attributes_for :preguntas
  validates :estado, numericality: true
  validates :fecha, numericality: true
  validates :tutor, presence: true
end

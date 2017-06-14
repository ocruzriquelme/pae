class Informe < ApplicationRecord
  belongs_to :estudiante
  has_many :pregunta
  accepts_nested_attributes_for : pregunta
  validates :estado, numericality: true
  validates :fecha, numericality: true
  validates :tutor, presence: true
end

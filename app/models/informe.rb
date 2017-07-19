class Informe < ApplicationRecord
    has_many :informe_estudiantes
    has_many :pregunta_informes
  accepts_nested_attributes_for :pregunta_informes
  validates :nombre, presence: true
end

class Informe < ApplicationRecord
    has_many :informe_estudiantes
    has_one :pregunta_informe
  accepts_nested_attributes_for :pregunta_informe

    validates :nombre, presence: true
end

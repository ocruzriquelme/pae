class InformeEstudiante < ApplicationRecord
belongs_to :estudiante
belongs_to :informe
validates :nombre, presence: {:message => "Nombre en blanco \n."}


validate :validarfecha
def validarfecha
  actual = Time.now
  if self.fecha < actual
    erros.add(:fecha, "La fecha debe ser mayor a la actual")
    return false
  end
end



end

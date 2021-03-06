class Estudiante < ApplicationRecord

  has_many :informes
  has_many :asignatura_cursadas
  belongs_to :rol
  has_many :grupo_tutors
  has_many :grupo_tutorados
  has_many :informe_estudiantes
  belongs_to :carrera
  belongs_to :priorizacion
  belongs_to :comuna

  validates :apellidos, presence: true
  validates :direccion, presence: true
  validates :email, uniqueness: true

  validates :rut, uniqueness: true, rut:true

  validates :nombres, presence: {:message => "LLenado Obligatorio"}
  validates :apellidos, presence: {:message => "LLenado Obligatorio"}

end

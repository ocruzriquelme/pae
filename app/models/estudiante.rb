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
  validates :nombres, format:{with: /\A[a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :nombres, length: {minimum: 3, maximum: 30, :message => "El nombre debe tener entre 3 y 15 caracteres"}

  validates :apellidos, presence: {:message => "LLenado Obligatorio"}
  validates :apellidos, format:{with: /\A[a-zA-Z\s]+\z/,message: "Solo acepta letras"}
  validates :apellidos, length: {minimum: 3, maximum: 30, :message => "El nombre debe tener entre 3 y 15 caracteres"}
end

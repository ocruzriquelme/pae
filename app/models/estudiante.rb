class Estudiante < ApplicationRecord

  has_many :informes
  has_many :asignatura_cursadas
  belongs_to :rol
  has_many :grupo_tutorias
  belongs_to :carrera
  belongs_to :priorizacion
  belongs_to :comuna
  validates :nombres, presence: true
  validates :apellidos, presence: true
  validates :direccion, presence: true
  validates :email, uniqueness: true
  validates :rut, uniqueness: true, rut:true





end

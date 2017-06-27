class Estudiante < ApplicationRecord
  has_many :informe
  belongs_to :rol
  has_many :grupo_tutorias
  belongs_to :carrera
  belongs_to :priorizacion
  belongs_to :comuna
  validates :nombres, presence: true
  validates :apellidos, presence: true
  validates :direccion, presence: true
  validates :email, uniqueness: true
  validates :rut, uniqueness: true




end

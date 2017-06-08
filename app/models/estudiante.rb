class Estudiante < ApplicationRecord
  has_many :informe
  has_many :rol
  has_many :grupo_tutorias
  validates :nombres, presence: true
  validates :apellidos, presence: true
  validates :direccion, presence: true
  validates :email, uniqueness: true
  validates :rut, uniqueness: true
  validates :rut, numericality: true

end

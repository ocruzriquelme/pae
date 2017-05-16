class Usuario < ApplicationRecord
  has_many :informe
  has_many :rol_usuario
  has_many :ficha
  has_many :grupo_tutoria
  validates :rut, uniqueness: true
  validates :rut, numericality: true
  validates :email, uniqueness: true
  validates :nombres, presence: true
  validates :apellidos, presence: true
  validates :password, uniqueness: true

end

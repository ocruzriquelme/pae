class Usuario < ApplicationRecord
  has_many :informes
  has_many :rol_usuarios
  has_many :fichas
  has_many :grupo_tutores
  validates :rut, uniqueness: true
  validates :rut, numericality: true
  validates :email, uniqueness: true
  validates :nombres, presence: true
  validates :apellidos, presence: true
  validates :password, uniqueness: true

end

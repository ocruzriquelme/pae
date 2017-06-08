class Rol < ApplicationRecord
  self.table_name = 'roles'
  has_many :estudiantes
  has_many :rol_usuarios
  validates :nombre, presence: true

end

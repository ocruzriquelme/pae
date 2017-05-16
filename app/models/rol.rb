class Rol < ApplicationRecord
  self.table_name = 'roles'
  belongs_to :estudiante
  belongs_to :rol_usuario
  validates :nombres, presence: true

end

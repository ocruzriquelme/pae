class RolUsuario < ApplicationRecord
  belongs_to :usuario
  has_many :rol
end

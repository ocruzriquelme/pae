class RolUsuario < ApplicationRecord
  belongs_to :usuario
  has_many :roles
end

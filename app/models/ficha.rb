class Ficha < ApplicationRecord
  belongs_to :usuario
  validates :descripcion, presence: true
end

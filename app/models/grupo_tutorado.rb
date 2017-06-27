class GrupoTutorado < ApplicationRecord
  belongs_to :estudiante
  belongs_to :grupo_tutor
end

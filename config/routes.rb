Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'estudiantes#index'


  get 'informes/', to: 'informes#index', as: 'informes'
  get 'informes/nuevo', to: 'informes#nuevo', as: 'nuevo_informe'
  get 'informes/:id',to: 'informes#mostrar', as: 'informe'
  post 'informes', to: 'informes#crear'
  put 'informes/:id' , to: 'informes#update'
  patch 'informes/:id' ,to: 'informes#update'
  delete 'informes/:id', to: 'informes#eliminar'





  get 'estudiantes/', to: 'estudiantes#index', as: 'estudiantes'
  get 'estudiantes/nuevo/', to: 'estudiantes#nuevo', as: 'nuevo_estudiante'
  get 'estudiantes/:id/asignaturas', to: 'estudiantes#mostrarasignatura', as: 'asignaturas_estudiantes'
  get 'estudiantes/:id',to: 'estudiantes#mostrar', as: 'estudiante'
  get 'estudiantes/:id/editar', to: 'estudiantes#editar', as: 'editar_estudiante'
  post 'estudiantes/', to: 'estudiantes#crear'
  put 'estudiantes/:id' , to: 'estudiantes#update'
  patch 'estudiantes/:id' ,to: 'estudiantes#update'
  delete 'estudiantes/:id', to: 'estudiantes#eliminar'

  get 'preguntainforme/', to: 'pregunta_informe#index', as: 'pregunta_informes'
  get 'preguntainforme/nuevo/', to: 'pregunta_informe#nuevo', as: 'nuevo_informe_pregunta'
  get 'preguntainforme/:id',to: 'pregunta_informe#mostrar', as: 'pregunta_informe'
  #get 'grupotutorados/:id/editar', to: 'grupo_tutorados#editar', as: 'editar_grupo_tutorado'
  post 'preguntainforme', to: 'pregunta_informe#crear'
  put 'preguntainforme/:id' , to: 'pregunta_informe#update'
  patch 'preguntainforme/:id' ,to: 'pregunta_informe#update'
  delete 'preguntainforme/:id', to: 'pregunta_informe#eliminar'


  get 'grupotutores/', to: 'estudiantes#tutores', as: 'tutores'
  get 'grupotutores/nuevo/', to: 'grupo_tutores#nuevo', as: 'nuevo_grupo_tutor'
  get 'grupotutores/:id',to: 'grupo_tutores#mostrar', as: 'tutore'
  get 'grupotutores/:id/editar', to: 'grupo_tutores#editar', as: 'editar_grupo_tutor'
  post 'grupotutores/', to: 'grupo_tutores#crear'
  put 'grupotutores/:id' , to: 'grupo_tutores#update'
  patch 'grupotutores/:id' ,to: 'grupo_tutores#update'
  delete 'grupotutores/:id', to: 'grupo_tutores#eliminar'

  get 'grupotutorados/', to: 'estudiantes#tutorados', as: 'tutorados'

  get 'grupotutorados/', to: 'grupo_tutorados#index', as: 'grupo_tutorados_index'
  get 'grupotutores/:id/tutorados/nuevo/', to: 'grupo_tutorados#nuevo', as: 'nuevo_grupo_tutorado'
  get 'grupotutorados/:id',to: 'grupo_tutorados#mostrar', as: 'grupo_tutorado'
  #get 'grupotutorados/:id/editar', to: 'grupo_tutorados#editar', as: 'editar_grupo_tutorado'
  post 'grupotutorados', to: 'grupo_tutorados#crear', as: 'agregar_tutorado_grupo'
  put 'grupotutorados/:id' , to: 'grupo_tutorados#update'
  patch 'grupotutorados/:id' ,to: 'grupo_tutorados#update'
  delete 'grupotutorados/:id', to: 'grupo_tutorados#eliminar'








end

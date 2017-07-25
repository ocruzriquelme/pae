Rails.application.routes.draw do


  devise_for :admins, controllers: {
      sessions: 'admins/sessions'
  }


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'inicio#index'
  get 'inicio', to: 'inicio#index', as:'inicio'

  get 'informeestudiante/', to: 'informe_estudiantes#index', as: 'informeestudiantes'
  get 'informeestudiante/nuevo/', to: 'informe_estudiantes#nuevo', as: 'nuevo_informe_estudiante'
  get 'informeestudiante/:id',to: 'informe_estudiantes#mostrar', as: 'informeestudiante'
  get 'informeestudiante/:id/editar', to: 'informe_estudiantes#editar', as: 'editar_informe_estudiante'
  post 'informeestudiante/', to: 'informe_estudiantes#crear', as: 'agregar_informe_estudiante'
  put 'informeestudiante/:id' , to: 'informe_estudiantes#update'
  patch 'informeestudiante/:id' ,to: 'informe_estudiantes#update'
  delete 'informeestudiante/:id', to: 'informe_estudiantes#eliminar'



  get 'preguntas/', to: 'preguntas#index', as: 'preguntas'
  get 'preguntas/nuevo', to: 'preguntas#nuevo', as: 'nuevo_pregunta'
  get 'preguntas/:id', to: 'preguntas#mostrar', as: 'pregunta'
  get 'preguntas/:id/editar', to: 'preguntas#editar', as: 'editar_pregunta'
  post 'preguntas' , to: 'preguntas#crear', as: 'nueva_pregunta'
  put 'preguntas/:id' ,to: 'preguntas#update'
  patch 'preguntas/:id' , to: 'preguntas#update'
  delete 'preguntas/:id' , to: 'preguntas#eliminar'


  get 'informes/', to: 'informes#index', as: 'informes'
  get 'informes/nuevo', to: 'informes#nuevo', as: 'nuevo_informe'
  get 'informes/:id',to: 'informes#mostrar', as: 'informe'
  get 'informes/:id/editar', to: 'informes#editar', as: 'editar_informe'
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

  get 'preguntainforme/', to: 'pregunta_informes#index', as: 'pregunta_informes'
  get 'preguntainforme/nuevo/:id/pregunta', to: 'pregunta_informes#nuevo', as: 'nuevo_informe_pregunta'
  get 'preguntainforme/:id',to: 'pregunta_informes#mostrar', as: 'pregunta_informe'
  #get 'preguntainforme/:id/editar', to: 'pregunta_informes#editar', as: 'editar_pregunta_informe'
  post 'preguntainforme', to: 'pregunta_informes#crear', as: 'crear_informe_nuevo'
  put 'preguntainforme/:id' , to: 'pregunta_informes#update'
  patch 'preguntainforme/:id' ,to: 'pregunta_informes#update'
  delete 'preguntainforme/:id', to: 'pregunta_informes#eliminar'

  #get 'grupotutores/', to: 'estudiantes#tutores', as: 'tutores'
  get 'grupotutores/', to: 'grupo_tutores#index', as: 'tutores'
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
  post 'grupotutorados/', to: 'grupo_tutorados#crear', as: 'agregar_tutorado_grupo'
  put 'grupotutorados/:id' , to: 'grupo_tutorados#update'
  patch 'grupotutorados/:id' ,to: 'grupo_tutorados#update'
  delete 'grupotutorados/:id', to: 'grupo_tutorados#eliminar'








end

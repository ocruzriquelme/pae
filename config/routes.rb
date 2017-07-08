Rails.application.routes.draw do

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'estudiantes#index'


  get 'estudiantes/', to: 'estudiantes#index', as: 'estudiantes'
  get 'estudiantes/nuevo/', to: 'estudiantes#nuevo', as: 'nuevo_estudiante'
  get 'estudiantes/:id',to: 'estudiantes#mostrar', as: 'estudiante'
  get 'estudiantes/:id/editar', to: 'estudiantes#editar', as: 'editar_estudiante'
  post 'estudiantes/', to: 'estudiantes#crear'
  put 'estudiantes/:id' , to: 'estudiantes#update'
  patch 'estudiantes/:id' ,to: 'estudiantes#update'
  delete 'estudiantes/:id', to: 'estudiantes#eliminar'



  get 'grupotutores/', to: 'estudiantes#index', as: 'tutores'
  get 'grupotutores/nuevo/', to: 'grupo_tutores#nuevo', as: 'nuevo_grupo_tutor'
  get 'grupotutores/:id',to: 'grupo_tutores#mostrar', as: 'tutore'
  get 'grupotutores/:id/editar', to: 'grupo_tutores#editar', as: 'editar_grupo_tutor'
  post 'grupotutores/', to: 'grupo_tutores#crear'
  put 'grupotutores/:id' , to: 'grupo_tutores#update'
  patch 'grupotutores/:id' ,to: 'grupo_tutores#update'
  delete 'grupotutores/:id', to: 'grupo_tutores#eliminar'

  get 'grupotutorados/', to: 'estudiantes#tutorados', as: 'tutorados'






end

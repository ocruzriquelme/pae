Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'estudiantes#index'

  get 'informes/', to: 'informes#index', as: 'informes'
  get 'informes/:id',to: 'informes#mostrar', as: 'informe'
  get 'informes/:id/editar', to: 'informes#editar', as: 'editar_informe'
  get 'informes/nuevo/', to: 'informes#nuevo', as: 'nuevo_informe'
  get 'informes/pregunta/', to: 'informes#pregunta_campos', as: 'pregunta_campos'
  post 'informes/', to: 'informes#crear'
  put 'informes/:id' , to: 'informes#update'
  patch 'informes/:id' ,to: 'informes#update'
  delete 'informes/:id', to: 'informes#eliminar'

  get 'estudiantes/', to: 'estudiantes#index', as: 'estudiantes'
  get 'estudiantes/nuevo/', to: 'estudiantes#nuevo', as: 'nuevo_estudiante'
  get 'estudiantes/:id',to: 'estudiantes#mostrar', as: 'estudiante'
  get 'estudiantes/:id/editar', to: 'estudiantes#editar', as: 'editar_estudiante'
  post 'estudiantes/', to: 'estudiantes#crear'
  put 'estudiantes/:id' , to: 'estudiantes#update'
  patch 'estudiantes/:id' ,to: 'estudiantes#update'
  delete 'estudiantes/:id', to: 'estudiantes#eliminar'

  get 'tutores/', to: 'estudiantes#tutores', as: 'tutores'
  get 'tutorados/', to: 'estudiantes#tutorados', as: 'tutorados'


  get 'fichas/', to: 'fichas#index', as: 'fichas'
  get 'fichas/:id',to: 'fichas#mostrar', as: 'ficha'
  get 'fichas/:id/editar', to: 'fichas#editar', as: 'editar_ficha'
  get 'fichas/nuevo', to: 'fichas#nuevo', as: 'nueva_ficha'
  post 'fichas/', to: 'fichas#crear'
  put 'fichas/:id' , to: 'fichas#update'
  patch 'fichas/:id' ,to: 'fichas#update'
  delete 'fichas/:id', to: 'fichas#eliminar'



end

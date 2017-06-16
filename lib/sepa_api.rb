class SepaApi
  URL='https://sepa.utem.cl/rest/api/v1'
  AUTH = {username: 'mIeQbsrQLl', password: 'e6a9d1c745d26665ef06c607fcf7435c'}


  def getEstudiante(rut)
    salida = Estudiante.new

    if rut!=nil
      uri = '/utem/estudiantes/'
      respuesta = HTTParty.get(URL+uri+rut.to_s, basic_auth: AUTH)
      case respuesta.response.code.to_i
        when 200
          salida.rut = respuesta['rut']
          salida.nombres = respuesta['nombres']
          salida.apellidos = respuesta['apellidos']
          salida.email = respuesta['email']
          direccion = respuesta['direccion'].split(", ")
          salida.direccion = direccion[0]
          salida.comuna_id = (Comuna.find_by_nombre(direccion[1].capitalize)).id
          carrera_y_cohorte= getCohortesYCarrera(rut)
          salida.carrera_id = carrera_y_cohorte[:carrera_id]
          salida.ingreso = carrera_y_cohorte[:numero_cohorte]
      end
    end
    return salida
  end

  def getCohortesYCarrera(rut)
    salida = []
    if rut!=nil
      uri= '/utem/estudiantes/'+rut.to_s+'/cohortes'
      respuesta = HTTParty.get(URL+uri, basic_auth: AUTH)
      case respuesta.response.code.to_i
        when 200
          carreraPersistir(respuesta[0])
          salida ={numero_cohorte: respuesta.size, carrera_id: (Carrera.find_by_nombre(respuesta[0]['nombreCarrera'])).id}
      end
    end
    return salida
  end

  def carreraPersistir(cohorte)
    uri = '/info/carrera/'
    if cohorte!=nil
      codigo = cohorte['codigoCarrera']
      if !Carrera.find_by_codigo(codigo)
        respuesta = HTTParty.get(URL+uri+codigo.to_s, basic_auth: AUTH)
        Carrera.create(codigo: codigo.to_i, nombre: respuesta['nombre'], duracion: respuesta['duracion'])
      end
    end
  end


end
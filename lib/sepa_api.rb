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
          salida.comuna_id = (Comuna.find_by_nombre(direccion[1].split.map(&:capitalize).* ' ')).id
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
          salida ={numero_cohorte: (respuesta.size-1), carrera_id: (Carrera.find_by_nombre(respuesta[0]['nombreCarrera'])).id}
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


  def mayorAnio(anio)
    mayor = -9999
    for i in 0..anio.size
      if mayor < anio[i].to_i
        mayor = anio[i].to_i
      end
    end
    return mayor
  end

  def ultimoSemestre (semestre)
    mayor = -9999
    for i in 0..semestre.size
      if mayor < semestre[i].to_i
        mayor = semestre[i].to_i
      end
    end
    return mayor
  end

  def asignaturasUltimoSemestre(rut)
    salida = []
    if rut!= nil
      uri = '/docencia/estudiantes/'+rut.to_s+'/asignaturas'
      respuesta = HTTParty.get(URL+uri, basic_auth: AUTH)
      case respuesta.response.code.to_i
        when 200
          anioarray = []
          respuesta.each do |actual|
            anioarray << actual['curso']['anio'].to_i
          end
          anio = mayorAnio(anioarray)
          semestreArray=[]
          respuesta.each do |actual|
            if actual['curso']['anio']== anio
              semestreArray<<actual['curso']['semestre']
            end
          end
          semestre = ultimoSemestre(semestreArray)
          asignaturas=[]
          respuesta.each do |actual|
            if actual['curso']['anio']== anio && actual['curso']['semestre']== semestre
              asignaturas<<actual

            end
          end
          asignaturas.each do |asignatura|
            nombreAsignatura = asignatura['curso']['asignatura']['nombre']
            if Asignatura.find_by_nombre(nombreAsignatura) == nil
              Asignatura.create(nombre: nombreAsignatura)
            end
            estadoAsignatura = asignatura['estado']
            notaAsignatura = asignatura['nota']
            semestreAsignatura = asignatura['curso']['semestre']
            anioASignatura = asignatura['curso']['anio']
            estudiante_id = (Estudiante.find_by_rut(rut)).id
            asignatura_id = (Asignatura.find_by_nombre(nombreAsignatura)).id
            cantidad = 0
            respuesta.each do |actual|
              if actual['curso']['asignatura']['nombre']== nombreAsignatura
                cantidad+=1
              end
            end
            veces = cantidad
            if AsignaturaCursada.find_by_asignatura_id(asignatura_id) == nil
              AsignaturaCursada.create(estado: estadoAsignatura, nota: notaAsignatura,
                                       semestre: semestreAsignatura, anio: anioASignatura, veces: veces, estudiante_id: estudiante_id, asignatura_id: asignatura_id)
            else
              asignaturaDB =  AsignaturaCursada.find_by_asignatura_id(asignatura_id)
              asignaturaDB.save(estado: estadoAsignatura, nota: notaAsignatura,
                                       semestre: semestreAsignatura, anio: anioASignatura, veces: veces, estudiante_id: estudiante_id, asignatura_id: asignatura_id)
            end
          end
      end
    end
  end

end
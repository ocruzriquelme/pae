# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170627070209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carreras", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "nombre"
    t.integer  "duracion"
    t.string   "jefe_carrera"
    t.string   "regimen"
    t.string   "escuela"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "provincia_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "email"
    t.string   "direccion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rol_id"
    t.integer  "comuna_id"
    t.integer  "carrera_id"
    t.date     "fecha_nacimiento"
    t.integer  "edad"
    t.integer  "ingreso"
    t.integer  "priorizacion_id"
  end

  create_table "fichas", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grupo_tutorados", force: :cascade do |t|
    t.integer  "estudiante_id"
    t.integer  "grupo_tutor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "grupo_tutores", force: :cascade do |t|
    t.integer  "estudiante_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "informes", force: :cascade do |t|
    t.integer  "estado"
    t.integer  "fecha"
    t.string   "tutor"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "respuesta_id"
  end

  create_table "preguntas", force: :cascade do |t|
    t.string   "pregunta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorizaciones", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provincias", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "region_id"
  end

  create_table "regiones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nombre"
    t.string   "corfo"
    t.string   "codigo"
    t.integer  "numero"
  end

  create_table "respuestas", force: :cascade do |t|
    t.string   "pregunta"
    t.string   "informe"
    t.string   "respuesta"
    t.string   "tutorado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "pregunta_id"
  end

  create_table "rol_usuarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rol_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "nombres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer  "rut"
    t.integer  "email"
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "password"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "ficha_id"
    t.integer  "rol_usuario_id"
    t.integer  "informe_id"
  end

  add_foreign_key "comunas", "provincias"
  add_foreign_key "estudiantes", "carreras"
  add_foreign_key "estudiantes", "comunas"
  add_foreign_key "estudiantes", "priorizaciones", column: "priorizacion_id"
  add_foreign_key "estudiantes", "roles", column: "rol_id"
  add_foreign_key "grupo_tutorados", "estudiantes"
  add_foreign_key "grupo_tutorados", "grupo_tutores", column: "grupo_tutor_id"
  add_foreign_key "grupo_tutores", "estudiantes"
  add_foreign_key "informes", "respuestas"
  add_foreign_key "provincias", "regiones", column: "region_id"
  add_foreign_key "respuestas", "preguntas"
  add_foreign_key "rol_usuarios", "roles", column: "rol_id"
  add_foreign_key "usuarios", "fichas"
  add_foreign_key "usuarios", "informes"
  add_foreign_key "usuarios", "rol_usuarios"
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
TUsuario.create(cCodUsuario: 'usu001' , cNombre: 'Usuario de Test de Geslico' , cCorreo: 'telefoniaconsumo@madrid.es' , bActivo: true, password: '123456', password_confirmation: '123456')

TPrograma.create(nCodPrograma: '3' , sPrograma: 'SEDES', sDescripcion: 'Gestión de Sedes' , sModelos: 'TSede,TUsuario' )
TPrograma.create(nCodPrograma: '1000' , sPrograma: 'PERMISOS_USUARIOS', sDescripcion: 'Gestión de Usuarios de Geslico' , sModelos: 'TUsuario,TUsuarioPrograma' )

TUsuariosPrograma.create(nIdUsuario: '1', nCodPrograma: '1', sPermiso: 'L', cCodUsuario: 'usu001')
TUsuariosPrograma.create(nIdUsuario: '1', nCodPrograma: '1000', sPermiso: 'L', cCodUsuario: 'usu001')
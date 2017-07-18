# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

idiomas = Idioma.create([
	{modalidad: 'Presencial', idioma: 'Español', imagen: Rails.root.join("app/assets/images/en.png").open},
	{modalidad: 'Presencial', idioma: 'Ingles', imagen: Rails.root.join("app/assets/images/es.png").open},
	{modalidad: 'Presencial', idioma: 'Aleman', imagen: Rails.root.join("app/assets/images/ger.png").open},
	{modalidad: 'Presencial', idioma: 'Frances', imagen: Rails.root.join("app/assets/images/fr.png").open},
	{modalidad: 'Presencial', idioma: 'Arabe', imagen: Rails.root.join("app/assets/images/arabe.png").open}])

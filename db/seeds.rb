# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Add tipos de participação"
Participation.create! name: 'Simples'
Participation.create! name: 'Apresentar pôster'
Participation.create! name: 'Apresentar trabalho oral'

puts "Add usuarios admin"
User.create! name: 'admin', cpf: '1234567891234', email:'admin@email.com', password: 'saped101J', password_confirmation: 'saped101J', admin: true, matriculation: ""
User.create! name: 'josafa', cpf: '1234567891234', email:'josafa@email.com', password: 'saped101J', password_confirmation: 'saped101J', admin: true, matriculation: ""
User.create! name: 'ada', cpf: '1234567891234', email:'ada@email.com', password: 'saped101J', password_confirmation: 'saped101J', admin: true, matriculation: ""

# Informações básicas, não remover do banco!
puts 'Cursos e palestrantes'
Course.create! name: 'Nenhum', panelist: 'Nenhum'
Course.create! name: 'Oficina de dança', panelist: 'Wallison Lima'
Course.create! name: 'Formação de professores para educação infantil', panelist: 'Alessandra'
Course.create! name: 'Filosofia e práxis', panelist: 'Jasmine'
Course.create! name: 'Didática da matemática', panelist: 'Maria César'
Course.create! name: 'A DEFINIR ALGEIR ', panelist: 'Algeir'
Course.create! name: 'A DEFINIR PAULO CÉSAR', panelist: 'Paulo César'
Course.create! name: 'A DEFINIR ISABEL ORQUIZ', panelist: 'Isabel Orquiz'

puts "Temas para apresentação oral"
Theme.create! name: 'Nenhum'
Theme.create! name: 'Didática e formação docente'
Theme.create! name: 'História e historiografia da educação'
Theme.create! name: 'Linguagens e tecnologias'
Theme.create! name: 'Políticas públicas educacionais e gestão escolar'
Theme.create! name: 'Saberes e práticas educativas'
Theme.create! name: 'Saberes e práticas pedagógica em espaços não escolares'
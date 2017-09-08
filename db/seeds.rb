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
User.create! name: 'administrador', cpf: '1234567891234', email:'geral@email.com', password: 'saped101J', password_confirmation: 'saped101J', admin: true, matriculation: ""

# Informações básicas, não remover do banco!
puts 'Cursos e palestrantes'
Course.create! name: 'Nenhum', panelist: 'Nenhum'
Course.create! name: 'O lugar do brincar na Educação Infantil', panelist: 'Prof.ª Mestre Alessandra Lopes
Castelini'
Course.create! name: 'A utilização do pensamento de Michel Foucault como método de pesquisa em
História da Educação', panelist: 'Prof. Mestre Nilton Ferreira Bittencourt Júnior'
Course.create! name: 'Marxismo e Educação', panelist: 'Prof.ª Mestre Jasmine Castro'
Course.create! name: 'Aprendendo e ensinando Matemática sem medo', panelist: 'Prof. ª Doutora Maria
Cézar Sousa'
Course.create! name: 'Scratch com Latex', panelist: ' Prof. Mestre Algeir Sampaio'
Course.create! name: 'Arte e Preservação Ambiental – Beleza Permanente', panelist: ' Rociania Barreto'

Course.create! name: 'Aprender a aprender na prática: a neurociência da aprendizagem', panelist: 'Profª Mestre
Patrícia Barros'

puts "Temas para apresentação oral"

Theme.create! name: 'Didática e formação docente'
Theme.create! name: 'História e historiografia da educação'
Theme.create! name: 'Linguagens e tecnologias'
Theme.create! name: 'Políticas públicas educacionais e gestão escolar'
Theme.create! name: 'Saberes e práticas educativas'
Theme.create! name: 'Saberes e práticas pedagógica em espaços não escolares'
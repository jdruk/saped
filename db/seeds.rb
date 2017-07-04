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
User.create! name: 'admin', cpf: '1234567891234', email:'admin@email.com', password: 'saped101J', password_confirmation: 'saped101J', admin: true
User.create! name: 'josafa', cpf: '1234567891234', email:'josafa@email.com', password: 'saped101J', password_confirmation: 'saped101J', admin: true
User.create! name: 'ada', cpf: '1234567891234', email:'ada@email.com', password: 'saped101J', password_confirmation: 'saped101J', admin: true

# Informações básicas, não remover do banco!
Course.create! name: 'Nenhum', panelist: 'Nenhum'
Theme.create! name: 'Nenhum'
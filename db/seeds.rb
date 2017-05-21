# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
User.create(email: 'joaoalmeida@test.com', nickname: 'Joda', name: 'João Almeida', password: "testtest" )
Post.create(
  title: "Primeiro Post do João",
  body:"não muito de escrever, mas preciso por algo aki :)",
  user_id:1
)

Post.create(
  title: "Segundo Post do Joda",
  body:"Joda é meu apelido, pois o desenvolvedor desta aplicação tem muita criatividade, fala serio.",
  user_id:1
)

User.create(email: 'mariasilva@test.com', nickname: 'Mia', name: 'Maria Silva', password: "testtest" )
Post.create(
  title: "Não confunda!",
  body:"Sou maria e não marina. Este post SOMENTE pode ser apagado e editado pela Maria.",
  user_id:2
)

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

Post.create(
  title: "Mais um Post do Joda",
  body:"E isso pq eu não gostava de escrever, tudo bem que isso aqui esta mais para tweets do que posts de blog/afins rs.",
  user_id:1
)

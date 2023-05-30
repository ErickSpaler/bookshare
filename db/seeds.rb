Book.destroy_all
User.destroy_all

user = User.create!(email: 'pedro@hotmail.com', password: '123123', name: 'pedro', address: 'rua david tows')

20.times do
  Book.create!(
    title: Faker::Book.title,
    author_name: Faker::Book.author,
    published_year: rand(1900..2023),
    genre: Faker::Book.genre,
    user: user
  )
end

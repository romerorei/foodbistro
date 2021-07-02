# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email:'admin@rei.com',
             password: '123456',
             password_confirmation: '123456',
             admin: true)

25.times do |i|
    Product.create!(
        name: "Pizza",
        description: "Lorem ipsum bbq chicken Esta es una descripcion del producto",
        price: 4990,
        catering_item: true
    )
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

    Category.create!(heading: 'Pizza', body: "Demasiado ricas!!", display: true)
    Category.create!(heading: 'Pasta', body: 'Mamma mia!', display: true)
    Category.create!(heading: 'Desserts', body: 'Deliciosos', display: true)

    10.times do |i|
        pizza = Product.new(
            name: 'Pizza',
            description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
            price: 4990,
            catering: true,
            category: Category.find(1)
        )
        pasta = Product.new(
            name: 'Pasta',
            description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
            price: 4990,
            catering: true,
            category: Category.find(2)
        )
        dessert = Product.new(
            name: 'Icecream',
            description: 'Lorem ipsum bbq chicken upstate newyork free range dough',
            price: 4990,
            catering: true,
            category: Category.find(3)
        )
        pizza.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pizza_image.jpg")
        pasta.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pasta_image.jpg")
        dessert.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_dessert_image.jpg")
        if i == 5
            pizza.featured = true
            pasta.featured = true
            dessert.featured = true
        end
        pizza.save
        pasta.save
        dessert.save
    end
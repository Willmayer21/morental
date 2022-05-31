# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Car.destroy_all
User.destroy_all
puts 'Creating users...'
user1 = User.create(email: 'sam@gmail.com', password: "1234567")
user2 = User.create(email: 'paul@gmail.com', password: "1234567")
user3 = User.create(email: 'dan@gmail.com', password: "1234567")
user4 = User.create(email: 'mac@gmail.com', password: "1234567")
puts 'Creating cars...'
Car.create(user: user1, model: 'Toyota', description: 'Corolla', year: 2020, price_per_day: 500, poster_url: 'https://www.topgear.com/sites/default/files/2022/04/1-Toyota-Corolla.jpg')
Car.create(user: user2, model: 'Ford', description: 'Focus', year: 2019, price_per_day: 700, poster_url: 'https://mediacloud.carbuyer.co.uk/image/private/s--wFYeWhAH--/v1647358100/carbuyer/2022/03/2022%20Ford%20Focus%20hatchback%20facelift-5.jpg')
Car.create(user: user3, model: 'Toyota', description: 'Hillux', year: 2021, price_per_day: 900, poster_url: 'https://images.cdn.circlesix.co/image/2/1200/630/5/uploads/posts/2016/04/ae1a48505b7dd199dbf1c9476895ef80.jpg')
Car.create(user: user4, model: 'Mercedes', description: 'Benz', year: 2022, price_per_day: 1000, poster_url: 'https://www.topgear.com/sites/default/files/2021/11/Mercedes_C300D_0000.jpg')

puts 'Finished!'

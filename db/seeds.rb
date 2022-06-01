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
user5 = User.create(email: 'com@gmail.com', password: "1234567")
user6 = User.create(email: 'wil@gmail.com', password: "1234567")
user7 = User.create(email: 'tac@gmail.com', password: "1234567")
user8 = User.create(email: 'toc@gmail.com', password: "1234567")
puts 'Creating cars...'
Car.create(user: user1, model: 'Toyota', description: 'Corolla', year: 2020, price_per_day: 500, poster_url: 'https://www.topgear.com/sites/default/files/2022/04/1-Toyota-Corolla.jpg')
Car.create(user: user2, model: 'Ford', description: 'Focus', year: 2019, price_per_day: 700, poster_url: 'https://mediacloud.carbuyer.co.uk/image/private/s--wFYeWhAH--/v1647358100/carbuyer/2022/03/2022%20Ford%20Focus%20hatchback%20facelift-5.jpg')
Car.create(user: user3, model: 'Toyota', description: 'Hillux', year: 2021, price_per_day: 900, poster_url: 'https://images.cdn.circlesix.co/image/2/1200/630/5/uploads/posts/2016/04/ae1a48505b7dd199dbf1c9476895ef80.jpg')
Car.create(user: user4, model: 'Mercedes', description: 'Benz', year: 2022, price_per_day: 1000, poster_url: 'https://www.topgear.com/sites/default/files/2021/11/Mercedes_C300D_0000.jpg')
Car.create(user: user5, model: 'Nissan', description: 'March', year: 2020, price_per_day: 500, poster_url: 'https://wieck-nissanao-production.s3.amazonaws.com/photos/cc13fe1090315e23f6c9411d7c86b2d44a6ca77a/preview-768x432.jpg')
Car.create(user: user6, model: 'BMW', description: 'X5 M', year: 2021, price_per_day: 950, poster_url: 'https://media.ed.edmunds-media.com/bmw/x5-m/2021/oem/2021_bmw_x5-m_4dr-suv_base_fq_oem_1_1280.jpg')
Car.create(user: user7, model: 'Skoda', description: 'Octavia', year: 2020, price_per_day: 600, poster_url: 'https://cdn.motor1.com/images/mgl/1xB1K/s1/2021-skoda-octavia-rs.jpg')
Car.create(user: user8, model: 'Citroen', description: 'C5X', year: 2020, price_per_day: 500, poster_url: 'https://www.topgear.com/sites/default/files/images/news-article/2021/04/cd806f9d782f9aee454d4eb18e5e8e2c/cl_21.009.022.jpg')
puts 'Finished!'

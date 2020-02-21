# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Users, Stars and Bookings database...'
Booking.destroy_all
Star.destroy_all
User.destroy_all

puts 'Creating users...'

pierre = User.create!(email: "pierre@pareasy.com", password: "password", first_name: "Pierre", last_name: "F")
edouard = User.create!(email: "edouard@pareasy.com", password: "password", first_name: "eoduard", last_name: "C")
benjamin = User.create!(email: "benjamin@pareasy.com", password: "password", first_name: "benjamin", last_name: "C")
xavier = User.create!(email: "xavier@pareasy.com", password: "password", first_name: "xavier", last_name: "B")

puts 'Creating stars...'

catherine = Star.new(user: edouard, name: "Catherine Zeta Jones", gender: "female", city: "Los Angeles", price: 63000, category: "actress", size: 167)
penelope = Star.new(user: xavier, name: "Penelope Cruz", gender: "female", city: "Barcelone", price: 210000, category: "actress", size: 169)
brad = Star.new(user: benjamin, name: "Brad Pitt", gender: "male", city: "New York", price: 300000, category: "actor", size: 180)
emily = Star.new(user: xavier, name: "Emily Ratajkowski", gender: "female", city: "Houston", price: 5789076, category: "model", size: 178)
halle = Star.new(user: pierre, name: "Halle Berry", gender: "female", city: "Havre", price: 56794, category: "model", size: 173)
tom = Star.new(user: pierre, name: "Tom Cruise", gender: "male", city: "Hollywood", price: 56794, category: "actor", size: 175)
kylian = Star.new(user: edouard, name: "Kylian Mbappe", gender: "male", city: "Paris", price: 789535, category: "footballer", size: 175)
jackie = Star.new(user: edouard, name: "Jackie Chan", gender: "male", city: "Hong Kong", price: 787654, category: "actor", size: 170)
jean = Star.new(user: benjamin, name: "Jean Dujardin", gender: "male", city: "Paris", price: 855654, category: "actor", size: 182)
marion = Star.new(user: edouard, name: "Marion Cotillard", gender: "female", city: "Paris", price: 5789076, category: "Actress", size: 170)
alain = Star.new(user: xavier, name: "Alain Delon", gender: "male", city: "Paris", price: 853467, category: "actor", size: 185)





puts 'Linking with photos...'

catherine_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277009/u1g1t033ay8feqoaq8ih089oro56.jpg")
catherine.photos.attach(io: catherine_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
catherine.save!

jean_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277077/kgtei7pydqu3w4t5n5gsdh9y75pk.jpg")
jean.photos.attach(io: jean_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
jean.save!

penelope_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277079/s9wwdott389fyq10eeqso6k9odz4.jpg")
penelope.photos.attach(io: penelope_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
penelope.save!

brad_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277081/377ew5mvia7ew6ijd35e4rhi65zt.jpg")
brad.photos.attach(io: brad_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
brad.save!

emily_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277083/uoy6qqwhtcoxv8jqql4mvvbylfk2.jpg")
emily.photos.attach(io: emily_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
emily.save!

tom_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277019/y6syc77jxb32f9ejb0tsamxxzz3r.jpg")
tom.photos.attach(io: tom_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
tom.save!

halle_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582217663/0a249xg9ce3qva4nwvicevljveqs.jpg")
halle.photos.attach(io: halle_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
halle.save!

kylian_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582217665/glp84bzc95h6548kq551zwk1t2sq.jpg")
kylian.photos.attach(io: kylian_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
kylian.save!

jackie_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582217667/l0ovvzf57rx7d0dzr5s7thnjy2ez.jpg")
jackie.photos.attach(io: jackie_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
jackie.save!

marion_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582217670/lsps9sjay7h60784i19lpra1ecoq.jpg")
marion.photos.attach(io: marion_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
marion.save!

alain_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582217673/nhh9xc7grxkuiatmfoo5pfdednlv.jpg")
alain.photos.attach(io: alain_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
alain.save!

puts 'Creating bookings...'
Booking.create!(star_id: catherine.id, user_id: edouard.id, from: "26/12/2020", to: "28/12/2020")
Booking.create!(star_id: penelope.id, user_id: xavier.id, from: "26/12/2020", to: "28/12/2020")
Booking.create!(star_id: brad.id, user_id: benjamin.id, from: "16/11/2020", to: "19/11/2020")
Booking.create!(star_id: emily.id, user_id: xavier.id, from: "12/01/2021", to: "19/02/2021")
Booking.create!(star_id: halle.id, user_id: pierre.id, from: "23/02/2021", to: "28/02/2021")
Booking.create!(star_id: tom.id, user_id: pierre.id, from: "25/02/2021", to: "29/02/2021")
Booking.create!(star_id: kylian.id, user_id: pierre.id, from: "27/02/2021", to: "29/03/2021")
Booking.create!(star_id: jackie.id, user_id: benjamin.id, from: "27/04/2020", to: "29/05/2020")
Booking.create!(star_id: jean.id, user_id: benjamin.id, from: "27/05/2020", to: "29/05/2020")
Booking.create!(star_id: marion.id, user_id: edouard.id, from: "26/08/2020", to: "29/09/2020")
Booking.create!(star_id: alain.id, user_id: edouard.id, from: "26/06/2020", to: "29/07/2020")

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

puts 'Creating friends...'

catherine = Star.new(user: edouard, name: "Catherine Zeta Jones", sex: "female", city: "Los Angeles", price: 63000)
penelope = Star.new(user: xavier, name: "Penelope Cruz", sex: "female", city: "Barcelone", price: 210000)
brad = Star.new(user: benjamin, name: "Brad Pitt", sex: "male", city: "New York", price: 300000)
kylian = Star.new(user: pierre, name: "Kylian Mbappe", sex: "male", city: "Paris", price: 278905)
emily = Star.new(user: xavier, name: "Emily Ratajkowski", sex: "female", city: "Paris", price: 5789076)
halle = Star.new(user: pierre, name: "Halle Berry", sex: "female", city: "Havre", price: 56794)
tom = Star.new(user: pierre, name: "Tom Cruise", sex: "male", city: "Hollywood", price: 56794)


puts 'Linking with photos...'

catherine_pic = URI.open("https://i.skyrock.net/4783/27084783/pics/814762761_small.jpg")
catherine.photos.attach(io: catherine_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
catherine.save!

penelope_pic = URI.open("https://www.myagecalculator.com/images/pen-lope-cruz.jpg")
penelope.photos.attach(io: penelope_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
penelope.save!


brad_pic = URI.open("https://i.pinimg.com/originals/ca/3e/76/ca3e7657b24bfba217c3afa7d85802df.jpg")
brad.photos.attach(io: brad_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
brad.save!


emily_pic = URI.open("https://img5.goodfon.com/wallpaper/nbig/b/1d/emily-ratajkowski-devushka-vzgliad-litso-makiiazh-model.jpg")
emily.photos.attach(io: emily_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
emily.save!

tom_pic = URI.open("https://lh3.googleusercontent.com/proxy/eh68aepZ_ux0fv3Rvtr1Q6zAI_TL_hos8G5B4AXemVmYi3aOipwMjnO2Ras1HWneibqNiml-DWRxgW0BCXxvtlXcO7HuceG3T_fg0HKBCnhToRRYOP4ENArgJNjERKHcqoiKwpIvred8j86IijyGPI0eMQwROhQJgYoV")
tom.photos.attach(io: tom_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
tom.save!

halle_pic = URI.open("https://www.cine-feuilles.ch/storage/app/uploads/public/5a3/cd7/167/5a3cd716737d6375340804.jpg")
halle.photos.attach(io: halle_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
halle.save!



puts 'Creating bookings...'
Booking.create!(star: catherine, user: edouard, from: "26/12/2020", to: "28/12/2020")
Booking.create!(star: penelope, user: xavier, from: "26/12/2020", to: "28/12/2020")
Booking.create!(star: brad, user: benjamin, from: "16/11/2020", to: "19/11/2020")
Booking.create!(star: emily, user: xavier, from: "12/01/2021", to: "19/02/2021")
Booking.create!(star: halle, user: pierre, from: "23/02/2021", to: "28/02/2021")
Booking.create!(star: tom, user: pierre, from: "25/02/2021", to: "29/02/2021")













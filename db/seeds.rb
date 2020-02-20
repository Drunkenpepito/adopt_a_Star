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

catherine_pic = URI.open("https://i.skyrock.net/4783/27084783/pics/814762761_small.jpg")
catherine.photos.attach(io: catherine_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
catherine.save!

jean_pic = URI.open("https://www.sudinfo.be/sites/default/files/dpistyles_v2/ena_sp_16_9_illustration_principale/2019/11/07/node_150584/41326666/public/2019/11/07/B9721519870Z.1_20191107201109_000+G88ES2UBG.1-0.jpg?itok=8Y2_Mdql1573211640")
jean.photos.attach(io: jean_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
jean.save!

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

kylian_pic = URI.open("https://resize-elle.ladmedia.fr/r/300,,forcex/crop/300,386,center-middle,forcex,ffffff/img/var/plain_site/storage/images/personnalites/kylian-mbappe/87919214-1-fre-FR/Kylian-Mbappe.jpg")
kylian.photos.attach(io: kylian_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
kylian.save!

jackie_pic = URI.open("https://img-3.journaldesfemmes.fr/YAyCEIeh8VzUTd-Eft0FRT39LXI=/311x/smart/90211973f4794eaba9d4fa9495ae2a4d/ccmcms-jdf/13719693.jpg")
jackie.photos.attach(io: jackie_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
jackie.save!

marion_pic = URI.open("https://hairstyles.thehairstyler.com/hairstyle_views/front_view_images/1942/original/Marion-Cotillard.jpg")
marion.photos.attach(io: marion_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
marion.save!

alain_pic = URI.open("https://www.modaoperandi.com/assets/images/products/797440/415545/z/large_sonic-editions-black-alain-delon-1965.jpg?_v=1576619240")
alain.photos.attach(io: alain_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
alain.save!




puts 'Creating bookings...'
Booking.create!(star: catherine, user: edouard, from: "26/12/2020", to: "28/12/2020")
Booking.create!(star: penelope, user: xavier, from: "26/12/2020", to: "28/12/2020")
Booking.create!(star: brad, user: benjamin, from: "16/11/2020", to: "19/11/2020")
Booking.create!(star: emily, user: xavier, from: "12/01/2021", to: "19/02/2021")
Booking.create!(star: halle, user: pierre, from: "23/02/2021", to: "28/02/2021")
Booking.create!(star: tom, user: pierre, from: "25/02/2021", to: "29/02/2021")
Booking.create!(star: kylian, user: pierre, from: "27/02/2021", to: "29/03/2021")
Booking.create!(star: jackie, user: benjamin, from: "27/04/2020", to: "29/05/2020")
Booking.create!(star: jean, user: benjamin, from: "27/05/2020", to: "29/05/2020")
Booking.create!(star: marion, user: edouard, from: "26/08/2020", to: "29/09/2020")
Booking.create!(star: alain, user: edouard, from: "26/06/2020", to: "29/07/2020")

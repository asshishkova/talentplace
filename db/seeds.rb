require 'faker'
require "open-uri"

puts 'Cleaning up TalentGenresDB'
TalentGenre.destroy_all

puts 'Cleaning up PlaceGenresDB'
PlaceGenre.destroy_all

puts 'Cleaning up GenreDB'
Genre.destroy_all

puts 'Creating Genres'
genres = ['Blues', 'Jazz', 'Rock', 'Country', 'Soul', 'Dance', 'DJ', 'Classic', 'StandUp']
genres.each do |genre|
  Genre.create!(name: genre.downcase)
end
puts 'Genres are created'

puts 'Cleaning up TalentDB'
Talent.destroy_all

talent_photos = ['https://www.warble-entertainment.com/blog/wp-content/uploads/2019/10/How-much-do-musicians-cost.jpg', 'https://musicindustryhowtoimages.s3.amazonaws.com/wp-content/uploads/2019/09/24183938/become-musician.jpg', 'https://s18670.pcdn.co/wp-content/uploads/Famous-Musicians-for-Kids.jpg', 'https://www.royalnavy.mod.uk/-/media/careers-section-redesign/homepage/roles-and-specialisations/services/marines/musician/roledetail_videoposter_647x364-assets/647x364_musician.jpg?h=364&w=647&rev=0124080e27394453b053e23bb219b652&cropregion=&hash=997DFA126796BE9EB2DB4FA04EC6A8AA', 'https://www.music.northwestern.edu/sites/default/files/2018-07/hire_musician.jpg', 'https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2017/03/shutterstock_402500896-850x476.jpg?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-2', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/A_musician_playing_violin_4.jpg/1280px-A_musician_playing_violin_4.jpg']

5.times do |i|
  new_talent = Talent.new(
    name: Faker::Name.name,
    email: "talent#{i}@talent.com",
    password: '123456',
    address: ["Afula", "Akko", "Arad", "Ariel", "Ashdod", "Ashkelon", "Baqa al-Gharbiyye", "Bat Yam", "Beer Sheva", "Beit Shean", "Beit Shemesh", "Betar Illit", "Bnei Berak", "Dimona", "Eilat", "Elad", "Givatayim", "Hadera", "Haifa", "Harish", "Herzliya", "Hod HaSharon", "Holon", "Jerusalem", "Karmiel", "Kfar Sava", "Kiryat Ata", "Kiryat Bialik", "Kiryat Gat", "Kiryat Malachi", "Kiryat Motzkin", "Kiryat Ono", "Kiryat Shemone", "Kiryat Yam", "Lod", "Maale Adumim", "Maalot Tarshiha", "Migdal HaEmek", "Modiin", "Nahariya", "Nazareth", "Nes Ziona", "Nesher", "Netanya", "Netivot", "Nof Hagalil", "Ofakim", "Or Akiva", "Or Yehuda", "Petah Tikva", "Qalansawe", "Raanana", "Rahat", "Ramat Hasharon", "Ramat-Gan", "Ramla", "Rehovot", "Rishon Lezion", "Rosh Ha'ayin", "Sakhnin", "Sderot", "Shefaram", "Taibeh", "Tamra", "Tel Aviv", "Tiberias", "Tira", "Tirat Carmel", "Tsfat (Safed)", "Umm al-Fahm", "Yavne", "Yehud-Monosson", "Yokneam"].sample,
    price: 100 + i,
    instagram_link: ['https://www.instagram.com/music.tlv/', 'https://www.instagram.com/applemusic/'].sample,
    youtube_link: ['https://youtu.be/jpv2tMJJuz0', 'https://youtu.be/iceS6BvhuQ8', 'https://youtu.be/FjHGZj2IjBk'].sample,
    spotify_link: 'https://open.spotify.com/playlist/37i9dQZF1DWSYF6geMtQMW',
  )
  new_talent.description = "Hi, my name is #{new_talent.name} I am a performing musician from #{new_talent.address}, I take part in about #{10 * i} shows a year, I can improve your place's atmospere with my nice music for $#{new_talent.price} per hour"
  file = URI.open(talent_photos.sample)
  new_talent.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  new_talent.save!
  puts "#{new_talent.name} created"
end
puts 'Talents are created'

puts 'Cleaning up PlaceDB'
Place.destroy_all

place_photos = ['https://media-cdn.tripadvisor.com/media/photo-s/1a/b8/46/6d/london-stock.jpg', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/Restaurant_N%C3%A4sinneula.jpg', 'https://d3aux7tjp119y2.cloudfront.net/original_images/Tak2-CMSTemplate_IrMZHla.jpg', 'https://media-cdn.tripadvisor.com/media/photo-s/14/f9/eb/44/nuestra-barra-principal.jpg']

5.times do |i|
  new_place = Place.new(
    title: Faker::Restaurant.name,
    email: "place#{i}@place.com",
    password: '123456',
    address: ["Afula", "Akko", "Arad", "Ariel", "Ashdod", "Ashkelon", "Baqa al-Gharbiyye", "Bat Yam", "Beer Sheva", "Beit Shean", "Beit Shemesh", "Betar Illit", "Bnei Berak", "Dimona", "Eilat", "Elad", "Givatayim", "Hadera", "Haifa", "Harish", "Herzliya", "Hod HaSharon", "Holon", "Jerusalem", "Karmiel", "Kfar Sava", "Kiryat Ata", "Kiryat Bialik", "Kiryat Gat", "Kiryat Malachi", "Kiryat Motzkin", "Kiryat Ono", "Kiryat Shemone", "Kiryat Yam", "Lod", "Maale Adumim", "Maalot Tarshiha", "Migdal HaEmek", "Modiin", "Nahariya", "Nazareth", "Nes Ziona", "Nesher", "Netanya", "Netivot", "Nof Hagalil", "Ofakim", "Or Akiva", "Or Yehuda", "Petah Tikva", "Qalansawe", "Raanana", "Rahat", "Ramat Hasharon", "Ramat-Gan", "Ramla", "Rehovot", "Rishon Lezion", "Rosh Ha'ayin", "Sakhnin", "Sderot", "Shefaram", "Taibeh", "Tamra", "Tel Aviv", "Tiberias", "Tira", "Tirat Carmel", "Tsfat (Safed)", "Umm al-Fahm", "Yavne", "Yehud-Monosson", "Yokneam"].sample,
  )
  new_place.website = "https://www.tripadvisor.com/Restaurants-g293984-Tel_Aviv_Tel_Aviv_District.html"
  new_place.description = "Hi, we are a cute restaurant '#{new_place.title}', located in the middle of #{new_place.address}. Looking for a talent to make our guests happy!"
  file = URI.open(place_photos.sample)
  new_place.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  new_place.save!
  puts "#{new_place.title} created"
end
puts 'Places are created'

# Booking.create!(date: Date.today, user: User.first, offer: Offer.first, status: 'pending')


puts 'Creating TalentGenres'
Talent.all.each do |talent|
  TalentGenre.create!(genre: Genre.all.sample, talent: talent)
  TalentGenre.create!(genre: Genre.all.sample, talent: talent)
end
puts 'TalentGenres are created'

puts 'Creating PlaceGenres'
Place.all.each do |place|
  PlaceGenre.create!(genre: Genre.all.sample, place: place)
end
puts 'PlaceGenres are created'

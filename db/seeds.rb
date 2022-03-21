require 'faker'
require "open-uri"

puts 'Cleaning up TalentGenresDB'
TalentGenre.destroy_all

puts 'Cleaning up PlaceGenresDB'
PlaceGenre.destroy_all

puts 'Cleaning up BookingDB'
Booking.destroy_all

puts 'Cleaning up PromotionDB'
Promotion.destroy_all

puts 'Cleaning up GenreDB'
Genre.destroy_all

puts 'Cleaning up TalentDB'
Talent.destroy_all

puts 'Cleaning up PlaceDB'
Place.destroy_all

puts 'Creating Genres'
genres = ['blues', 'jazz', 'rock', 'country', 'dance', 'DJ', 'classic', 'StandUp', 'piano', 'violin', 'guitar', 'covers']
genres.each do |genre|
  Genre.create!(name: genre)
end
puts 'Genres are created'

cities = ["Bat Yam", "Givatayim", "Haifa", "Herzliya", "Holon", "Nes Ziona", "Netanya", "Petah Tikva", "Raanana", "Ramat-Gan", "Ramla", "Rehovot", "Rishon Lezion", "Tel Aviv", "Yavne"]
instagrams = ['music.tlv/', 'applemusic/']
youtubes = ['aHjpOzsQ9YI', 'WJ3-F02-F_Y', '2CkB4a0A7cQ']
spotifies = ['4RkDMdAFmxTp2E9FsMRq0R', '2OZVlENh6kAfqpRyPIPyl7']
names = %w[Jessie Marion Alva Cleo Frankie Hollis Sammie Jamie Kris Robbie Tracy Merrill Noel Johnnie Ariel Jan Finley Justice]

puts "Creating Talents"

18.times do |i|
  new_talent = Talent.new(
    name: "#{names.sample} #{Faker::Name.last_name}",
    email: "talent#{i}@mail.com",
    password: '123456',
    address: cities.sample,
    price: 100 + (10 * rand(i + 1)),
    instagram_link: "https://www.instagram.com/#{instagrams.sample}",
    youtube_link: "https://youtu.be/#{youtubes.sample}",
    spotify_link: "https://open.spotify.com/playlist/#{spotifies.sample}"
  )
  new_talent.description = "Hi, my name is #{new_talent.name}, I am a performing musician from #{new_talent.address}, I take part in about #{10 * rand(i + 1)} shows a year, I can improve your place's atmosphere with my nice music for $#{new_talent.price} per hour."
  file = File.open("#{Rails.root}/app/assets/images/talents/t#{i + 1}.jpeg")
  new_talent.photo.attach(io: file, filename: 'talent.png', content_type: 'image/png')
  new_talent.save!
  names.delete(new_talent.name)
  puts "#{new_talent.name} created"
  genres.sample(2).each do |genre_name|
    TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: genre_name))
  end
  puts "TalentGenres for #{new_talent.name} created"
end
puts 'Talents are created'

9.times do |i|
  new_place = Place.new(
    title: Faker::Tea.variety,
    email: "place#{i + 1}@mail.com",
    password: '123456',
    address: cities.sample
  )
  new_place.website = "https://www.tripadvisor.com/Restaurants-g293977-Israel.html"
  new_place.description = "Hi, we are a cute restaurant located in the middle of #{new_place.address}. Looking for a talent to make our guests happy!"
  file = File.open("#{Rails.root}/app/assets/images/places/p#{i + 1}.jpeg")
  new_place.photo.attach(io: file, filename: 'place.png', content_type: 'image/png')
  new_place.save!
  puts "#{new_place.title} created"
  genres.sample(2).each do |genre_name|
    PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: genre_name))
  end
  cities.delete(new_place.address)
  puts "PlacesGenres for #{new_place.title} created"
end
puts 'Places are created'

booking_messages = ['looking forward to meeting you', 'please come half an hour before', 'our manager will meet you']
booking_status = ['confirmed', 'confirmed', 'confirmed', 'pending', 'pending', 'declined']

Place.all.each do |place|
  Talent.all.sample(4).each do |talent|
    Booking.create!(
      place: place,
      talent: talent,
      date: (DateTime.civil_from_format :local, 2022, rand(1..12), rand(1..28), rand(15..23), [0, 30].sample),
      status: booking_status.sample,
      message: booking_messages.sample
    )
  end
end
puts 'Bookings are created'

promotion_messages = ['I think my music is perfect for your place', 'I would be happy to play for you', 'I am the one you are looking for']

Talent.all.each do |talent|
  Place.all.sample(2).each do |place|
    Promotion.create!(
      place: place,
      talent: talent,
      message: "Hi, I am #{talent.name}, #{promotion_messages.sample}"
    )
  end
end
puts 'Promotions are created'

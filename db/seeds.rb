require 'faker'
require "open-uri"

# puts 'Cleaning up TalentGenresDB'
# TalentGenre.destroy_all

# puts 'Cleaning up PlaceGenresDB'
# PlaceGenre.destroy_all

# puts 'Cleaning up GenreDB'
# Genre.destroy_all

# puts 'Cleaning up TalentDB'
# Talent.destroy_all

# puts 'Cleaning up PlaceDB'
# Place.destroy_all

# puts 'Creating Genres'
# genres = ['blues', 'jazz', 'rock', 'country', 'dance', 'DJ', 'classic', 'StandUp', 'piano', 'violin', 'guitar', 'covers']
# genres.each do |genre|
#   Genre.create!(name: genre)
# end
# puts 'Genres are created'

# new_talent = Talent.new(
#   name: 'Matthew Chandler',
#   email: 'talent1@talent.com',
#   password: '123456',
#   address: 'Bat Yam',
#   price: 120,
#   instagram_link: 'https://www.instagram.com/guitar_reels/',
#   youtube_link: 'https://youtu.be/2CkB4a0A7cQ',
#   spotify_link: 'https://open.spotify.com/artist/0oBiYchunKTMDesVICwrvL'
# )
# new_talent.description = "Hello, my name is #{new_talent.name} I am a performing musician from #{new_talent.address}, I take part in about 50 shows a year, I can improve your place's atmosphere with my nice music."
# file = URI.open('https://www.warble-entertainment.com/blog/wp-content/uploads/2019/10/How-much-do-musicians-cost.jpg')
# new_talent.photo.attach(io: file, filename: 'Matthew.png', content_type: 'image/png')
# new_talent.save!
# puts "#{new_talent.name} created"

# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'guitar'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'country'))

# puts "TalentGenres for #{new_talent.name} created"

# new_talent = Talent.new(
#   name: 'Bob Walker',
#   email: 'talent2@talent.com',
#   password: '123456',
#   address: 'Ashdod',
#   price: 90,
#   instagram_link: 'https://www.instagram.com/khomenko.tv/',
#   youtube_link: 'https://youtu.be/qm5FsgKDyQo',
#   spotify_link: 'https://open.spotify.com/artist/05yMo6qbw9tAIRbIfi1tVn'
# )
# new_talent.description = "Hi, I am #{new_talent.name} from #{new_talent.address}, I take part in about 20 shows a year, I can improve your place's atmosphere."
# file = URI.open('https://musicindustryhowtoimages.s3.amazonaws.com/wp-content/uploads/2019/09/24183938/become-musician.jpg')
# new_talent.photo.attach(io: file, filename: 'musicindustryhowtoimages.png', content_type: 'image/png')
# new_talent.save!
# puts "#{new_talent.name} created"

# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'guitar'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'rock'))

# puts "TalentGenres for #{new_talent.name} created"

# new_talent = Talent.new(
#   name: 'Mary Becker',
#   email: 'talent3@talent.com',
#   password: '123456',
#   address: 'Ramat-Gan',
#   price: 150,
#   instagram_link: 'https://www.instagram.com/violin.virtuoso/',
#   youtube_link: 'https://youtu.be/iEBX_ouEw1I',
#   spotify_link: 'https://open.spotify.com/artist/5JdT0LYJdlPbTC58p60WTX'
# )
# new_talent.description = "Hello, I am #{new_talent.name} from #{new_talent.address}, I take part in about 70 shows a year, I can improve your place's atmosphere."
# file = URI.open('https://www.royalnavy.mod.uk/-/media/careers-section-redesign/homepage/roles-and-specialisations/services/marines/musician/roledetail_videoposter_647x364-assets/647x364_musician.jpg?h=364&w=647&rev=0124080e27394453b053e23bb219b652&cropregion=&hash=997DFA126796BE9EB2DB4FA04EC6A8AA')
# new_talent.photo.attach(io: file, filename: 'Mary.png', content_type: 'image/png')
# new_talent.save!
# puts "#{new_talent.name} created"

# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'classic'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'violin'))

# puts "TalentGenres for #{new_talent.name} created"

# new_talent = Talent.new(
#   name: 'Quadro Breeze',
#   email: 'talent4@talent.com',
#   password: '123456',
#   address: 'Tel Aviv',
#   price: 400,
#   instagram_link: 'https://www.instagram.com/violin.virtuoso/',
#   youtube_link: 'https://youtu.be/E4w_5bY0tBY',
#   spotify_link: 'https://open.spotify.com/playlist/4RkDMdAFmxTp2E9FsMRq0R'
# )
# new_talent.description = "Hello, we are #{new_talent.name}, we are from #{new_talent.address}, we take part in about 20 shows a year, we can improve your place's atmosphere with our nice classical music."
# file = URI.open('https://www.music.northwestern.edu/sites/default/files/2018-07/hire_musician.jpg')
# new_talent.photo.attach(io: file, filename: 'music.northwesterns.png', content_type: 'image/png')
# new_talent.save!
# puts "#{new_talent.name} created"

# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'classic'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'violin'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'covers'))

# puts "TalentGenres for #{new_talent.name} created"

# new_talent = Talent.new(
#   name: 'DJ Walter',
#   email: 'talent5@talent.com',
#   password: '123456',
#   address: 'Tel Aviv',
#   price: 200,
#   instagram_link: 'https://www.instagram.com/_piano_music_/',
#   youtube_link: 'https://youtu.be/Cz3F_25ajgw',
#   spotify_link: 'https://open.spotify.com/artist/5vpWEdK9C28uOX8jjfRi1v'
# )
# new_talent.description = "Hello, I am #{new_talent.name} from #{new_talent.address}, I take part in about 200 shows a year, I can improve your place's atmosphere."
# file = URI.open('https://smallbiztrends.com/ezoimgfmt/media.smallbiztrends.com/2017/03/shutterstock_402500896-850x476.jpg?ezimgfmt=ng%3Awebp%2Fngcb12%2Frs%3Adevice%2Frscb12-2')
# new_talent.photo.attach(io: file, filename: 'shutterstock.png', content_type: 'image/png')
# new_talent.save!
# puts "#{new_talent.name} created"

# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'DJ'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'piano'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'covers'))

# puts "TalentGenres for #{new_talent.name} created"

# new_talent = Talent.new(
#   name: 'Pablo Campbell',
#   email: 'talent6@talent.com',
#   password: '123456',
#   address: 'Holon',
#   price: 180,
#   instagram_link: 'https://www.instagram.com/violin.virtuoso/',
#   youtube_link: 'https://youtu.be/9e0Tuvitkgs',
#   spotify_link: 'https://open.spotify.com/playlist/7DV0Aj6AN1vPVePAjaqhiJ'
# )
# new_talent.description = "Hello, I am #{new_talent.name} from #{new_talent.address}, I take part in about 30 shows a year, I can improve your place's atmosphere"
# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/A_musician_playing_violin_4.jpg/1280px-A_musician_playing_violin_4.jpg')
# new_talent.photo.attach(io: file, filename: 'wikimedia.png', content_type: 'image/png')
# new_talent.save!
# puts "#{new_talent.name} created"

# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'violin'))
# TalentGenre.create!(talent: new_talent, genre: Genre.find_by(name: 'covers'))

# puts "TalentGenres for #{new_talent.name} created"

# puts 'Talents are created'

# new_place = Place.new(
#   title: 'Wine Tower',
#   email: "place1@place.com",
#   password: '123456',
#   address: 'Tel Aviv'
# )
# new_place.website = "https://www.tripadvisor.com/Restaurants-g293984-Tel_Aviv_Tel_Aviv_District.html"
# new_place.description = "Hi, we are a cute restaurant '#{new_place.title}', located in the middle of #{new_place.address}. Looking for a talent to make our guests happy!"
# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/e/ef/Restaurant_N%C3%A4sinneula.jpg')
# new_place.photo.attach(io: file, filename: 'media-cdn.png', content_type: 'image/png')
# new_place.save!
# puts "#{new_place.title} created"

# PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: 'classic'))

# puts "PlaceGenre for #{new_place.title} created"

# new_place = Place.new(
#   title: 'Good Mood',
#   email: "place2@place.com",
#   password: '123456',
#   address: 'Ramat-Gan'
# )
# new_place.website = "https://www.tripadvisor.com/Restaurants-g293984-Tel_Aviv_Tel_Aviv_District.html"
# new_place.description = "Hi, we are '#{new_place.title}', located in the middle of #{new_place.address}. Looking for a talent to make our guests happy!"
# file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/1a/b8/46/6d/london-stock.jpg')
# new_place.photo.attach(io: file, filename: 'media-cdn.png', content_type: 'image/png')
# new_place.save!
# puts "#{new_place.title} created"

# PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: 'classic'))
# PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: 'country'))

# puts "PlaceGenre for #{new_place.title} created"

# new_place = Place.new(
#   title: 'Villa 7',
#   email: "place3@place.com",
#   password: '123456',
#   address: 'Bat Yam'
# )
# new_place.website = "https://www.tripadvisor.com/Restaurants-g293984-Tel_Aviv_Tel_Aviv_District.html"
# new_place.description = "Hi, we are a cute restaurant '#{new_place.title}', located in the middle of #{new_place.address}. Looking for a talent to make our guests happy!"
# file = URI.open('https://d3aux7tjp119y2.cloudfront.net/original_images/Tak2-CMSTemplate_IrMZHla.jpg')
# new_place.photo.attach(io: file, filename: 'd3aux7tjp119y2.png', content_type: 'image/png')
# new_place.save!
# puts "#{new_place.title} created"

# PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: 'dance'))
# PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: 'country'))

# puts "PlaceGenre for #{new_place.title} created"

# new_place = Place.new(
#   title: 'Bar #1',
#   email: "place4@place.com",
#   password: '123456',
#   address: 'Tel Aviv'
# )
# new_place.website = "https://www.tripadvisor.com/Restaurants-g293984-Tel_Aviv_Tel_Aviv_District.html"
# new_place.description = "Hi, we are '#{new_place.title}', located in the middle of #{new_place.address}. Looking for a talent to make our guests happy!"
# file = URI.open('https://www.beachstonecafe.com.au/wp-content/uploads/2022/01/pic-348.jpg')
# new_place.photo.attach(io: file, filename: 'd3aux7tjp119y2.png', content_type: 'image/png')
# new_place.save!
# puts "#{new_place.title} created"

# PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: 'dance'))
# PlaceGenre.create!(place: new_place, genre: Genre.find_by(name: 'DJ'))

# puts "PlaceGenre for #{new_place.title} created"

puts 'Cleaning up BookingDB'

Booking.destroy_all
Booking.create!(
  place: Place.find_by(title: 'Wine Tower'),
  talent: Talent.find_by(name: 'Mary Becker'),
  date: (DateTime.civil_from_format :local, 2022, 3, 30, 20, 30),
  status: 'pending',
  message: 'please confirm it as soon as possible'
)

Booking.create!(
  place: Place.find_by(title: 'Wine Tower'),
  talent: Talent.find_by(name: 'Quadro Breeze'),
  date: (DateTime.civil_from_format :local, 2022, 4, 5, 21, 30),
  status: 'pending',
  message: 'please let us no if you need some special equipment'
)

Booking.create!(
  place: Place.find_by(title: 'Good Mood'),
  talent: Talent.find_by(name: 'DJ Walter'),
  date: (DateTime.civil_from_format :local, 2022, 4, 1, 22, 0),
  status: 'pending',
  message: 'can you also play Tango?'
)

Booking.create!(
  place: Place.find_by(title: 'Good Mood'),
  talent: Talent.find_by(name: 'Pablo Campbell'),
  date: (DateTime.civil_from_format :local, 2022, 3, 20, 19, 0),
  status: 'pending',
  message: 'looking forward to meet you'
)

Booking.create!(
  place: Place.find_by(title: 'Good Mood'),
  talent: Talent.find_by(name: 'Matthew Chandler'),
  date: (DateTime.civil_from_format :local, 2022, 4, 5, 19, 30),
  status: 'pending',
  message: 'please come one hour before'
)

Booking.create!(
  place: Place.find_by(title: 'Good Mood'),
  talent: Talent.find_by(name: 'Mary Becker'),
  date: (DateTime.civil_from_format :local, 2022, 5, 30, 20, 30),
  status: 'pending',
  message: 'please do  not be late'
)

Booking.create!(
  place: Place.find_by(title: 'Villa 7'),
  talent: Talent.find_by(name: 'Pablo Campbell'),
  date: (DateTime.civil_from_format :local, 2022, 3, 10, 20, 30),
  status: 'pending',
  message: 'our guests prefer soft music'
)

Booking.create!(
  place: Place.find_by(title: 'Villa 7'),
  talent: Talent.find_by(name: 'Matthew Chandler'),
  date: (DateTime.civil_from_format :local, 2022, 4, 10, 21, 30),
  status: 'pending',
  message: 'please were suit if it is possible'
)

Booking.create!(
  place: Place.find_by(title: 'Villa 7'),
  talent: Talent.find_by(name: 'Quadro Breeze'),
  date: (DateTime.civil_from_format :local, 2022, 5, 5, 20, 0),
  status: 'pending',
  message: 'our manager will meet you half an hour before'
)

Booking.create!(
  place: Place.find_by(title: 'Bar #1'),
  talent: Talent.find_by(name: 'Bob Walker'),
  date: (DateTime.civil_from_format :local, 2022, 4, 15, 23, 30),
  status: 'pending',
  message: 'hope you are able to work till the last client'
)

Booking.create!(
  place: Place.find_by(title: 'Bar #1'),
  talent: Talent.find_by(name: 'Bob Walker'),
  date: (DateTime.civil_from_format :local, 2022, 4, 17, 23, 30),
  status: 'pending',
  message: 'yes, we need you twice :)'
)

Booking.create!(
  place: Place.find_by(title: 'Bar #1'),
  talent: Talent.find_by(name: 'DJ Walter'),
  date: (DateTime.civil_from_format :local, 2022, 4, 15, 23, 30),
  status: 'pending',
  message: 'please prepare some lady gaga covers'
)

puts "Bookings are created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Array of good words in Bahasa Indonesia
good_words = %w(
  murah
  nyaman
  menyenangkan
  aman
  sejahtera
  sentosa
  sehat
  menggembirakan
  strategis
  anti-maling
  terjangkau
  dekat-kampus
  berhadiah
  parkir-luas
)

# Array of street names in Jogja
street_names = %w(
  malioboro
  kartini
  kaliurang
  gejayan
  gotong-royong
)

user = User.create!(name: 'Delta Purna W.', email: 'd@qiscus.com')
user2 = User.create!(name: 'Ashari Juang', email: 'j@qiscus.com')


# create 20 fake data everytime we run rake db:seed
10.times do
  # this will take 2/3 words in random from array good words and make sentence
  # with word 'dan' as connector
  # example:
  # 1. murah, nyaman dan berhadiah
  # 2. sheat dan menggembirakan
  user.places.create!(
        name: "Kos #{Faker::Address.city}",
        description: "#{Faker::Lorem.paragraph(3)}"
      )
      user2.places.create!(
        name: "Kos #{Faker::Address.city}",
        description: "#{Faker::Lorem.paragraph(3)}"
      )
    end

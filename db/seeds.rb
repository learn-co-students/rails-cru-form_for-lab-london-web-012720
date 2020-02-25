# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.create(name: 'Drake', bio: 'Canadian Rapper')
Artist.create(name: 'Arctic Monkeys', bio: 'British Rock Band')
Artist.create(name: 'childish Gambino', bio: 'American R&B Artist')

Genre.create(name: 'Rap')
Genre.create(name: 'Rock')
Genre.create(name: 'R&B')

Song.create(name: 'Life is Good', artist_id: 1, genre_id: 1)
Song.create(name: 'Do I Wanna Know', artist_id: 2, genre_id: 2)
Song.create(name: 'This is America', artist_id: 3, genre_id: 3)
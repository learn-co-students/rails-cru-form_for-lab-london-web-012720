# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Mustafa", bio: "my name is Mustafa")
a2 = Artist.create(name: "Alex", bio: "my name is Alex")
a3 = Artist.create(name: "Rossi", bio: "my name is Rossi")

g1 = Genre.create(name: "Rock")
g2 = Genre.create(name: "Pop")
g3 = Genre.create(name: "Rep")

Song.create(name: "song1" , artist_id: a1.id , genre_id: g1.id)
Song.create(name: "song2" , artist_id: a2.id , genre_id: g2.id)
Song.create(name: "song3" , artist_id: a3.id , genre_id: g2.id)
Song.create(name: "song4" , artist_id: a1.id , genre_id: g3.id)
Song.create(name: "song5" , artist_id: a2.id , genre_id: g1.id)






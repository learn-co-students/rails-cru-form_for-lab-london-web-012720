# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "artist1", bio: "biiio 1", created_at: Time.now, updated_at: Time.now)
Artist.create(name: "artist2", bio: "biiio 22", created_at: Time.now, updated_at: Time.now)
Artist.create(name: "artist31222", bio: "biiio 33", created_at: Time.now, updated_at: Time.now)
Artist.create(name: "artist412", bio: "biiio 400", created_at: Time.now, updated_at: Time.now)

Genre.create(name: "pop", created_at: Time.now, updated_at: Time.now)
Genre.create(name: "more rock", created_at: Time.now, updated_at: Time.now)
Genre.create(name: "rock", created_at: Time.now, updated_at: Time.now)

Song.create(name: "song11", artist_id: 1, genre_id: 1, created_at: Time.now, updated_at: Time.now)
Song.create(name: "song22", artist_id: 1, genre_id: 3, created_at: Time.now, updated_at: Time.now)
Song.create(name: "song133", artist_id: 2, genre_id: 2, created_at: Time.now, updated_at: Time.now)
Song.create(name: "song444", artist_id: 3, genre_id: 1, created_at: Time.now, updated_at: Time.now)
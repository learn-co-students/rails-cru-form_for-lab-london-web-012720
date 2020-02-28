# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Artist.destroy_all

genres = ["Disco", "Rock", "Rap", "Banana", "Weird", "Gabba"]

genres.each do |x| 
    Genre.create(name: x)
end 

Artist.create(name: "Bob", bio: "Lalalalalalala")
Artist.create(name: "Dave", bio: "Hahhaahahahaha")
Artist.create(name: "Steve", bio: "Lalalalalalala")
Artist.create(name: "Billy", bio: "Hahhaahahahaha")


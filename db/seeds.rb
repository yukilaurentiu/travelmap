# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

puts "delete DB"
# Bookmark.destroy_all
# Wishlist.destroy_all
# Post.destroy_all
# City.destroy_all
# User.destroy_all

User.create(username: "Dareos", email: "dareos@lewagon.com", password: "111111")
User.create(username: "Yuki", email: "yuki@lewagon.com", password: "222222")
# User.create(username: "Sonja", email: "sonja@dlewagon.com", password: "333333")
# User.create(username: "Jose", email: "jose@lewagon.com", password: "444444")

City.create([{ name: "London" }, { name: "Madrid" }, { name: "Berlin" }, { name: "Oslo" }])

Post.create(
  user_id: "1",
  city_id: "1",
  address: "Tower Bridge Rd, London SE1 2UP, United Kingdom",
  title: "What a beautiful Landmark!",
  category: "Best spots",
  description: "This historic gem located in the heart of London is an absolute must-see. 
                It's an iconic testament to the city's rich history, 
                standing proudly as a symbol of its heritage. "
)

Post.create(
  user_id: "1",
  city_id: "1",
  address: "Great Russell St, London WC1B 3DG, United Kingdom",
  title: "Impressive museum!",
  category: "Art&Culture",
  description: "A very nice place to visit if you want to see various types of 
                monuments from different countries and  from different Eras."
)

Post.create(
  user_id: "2",
  city_id: "2",
  address: "Calle Azcona 46, 28028 Madrid Spain",
  title: "Highly recommended! `Los Montes de Galicia`",
  category: "Restaurants",
  description: "Food was amazing, service excellent and all around wonderful meal"
)

Post.create(
  user_id: "1",
  city_id: "3",
  address: "Pariser Platz, 10117 Berlin, Germany",
  title: "iconic gate, Brandenburger Tor!",
  category: "Best spots",
  description: "One of the most attractive tourist spots in Berlin.
                Good to see such old construction along with a lot of visitors."
)

Post.create(
  user_id: "1",
  city_id: "4",
  address: "Bankplassen 1, 0151 Oslo, Norway",
  title: "the oldest cafe, Engebret Cafe",
  category: "Restaurants",
  description: "A very Norwegian atmosphere with traditional food, very tasty fish soup and salmon, 
                traditional appearance and calm atmosphere. "
)

Post.create(
  user_id: "1",
  city_id: "3",
  address: "Unter den Linden 2, 10117 Berlin, Germany",
  title: "Deutsches Historisches Museum",
  category: "Art&Culture",
  description: "Great exhibition on commissioned art in Third Reich and after exploring continuance of purpose.
                Awesome building! Original museum building is undergoing renovation."
)

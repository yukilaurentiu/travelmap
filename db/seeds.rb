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

User.create(username: "Phil", email: "Phil@lewagon.com", password: "111111")
User.create(username: "Yuki", email: "yuki@lewagon.com", password: "222222")
User.create(username: "Sonja", email: "sonja@dlewagon.com", password: "333333")
# User.create(username: "Jose", email: "jose@lewagon.com", password: "444444")

City.create([{ name: "London" }, { name: "Madrid" }, { name: "Berlin" }, { name: "Vienna" }])

Post.create(
  user_id: "2",
  city_id: "1",
  address: "Great Russell St, London WC1B 3DG, United Kingdom",
  title: "Discover History at the British Museum",
  category: "Art&Culture",
  description: "The British Museum is a must-visit in London, offering incredible historical artifacts from ancient to modern times. 
                Admission is free, but the museum is huge—so plan ahead to make the most of your visit."
)

Post.create(
  user_id: "2",
  city_id: "1",
  address: "Strand, London WC2R 0EZ, United Kingdom",
  title: "Lovely afternoon tea in London!",
  category: "Restaurants",
  description: "We enjoyed a delightful high tea in the Thames Foyer at The Savoy, 
                where the delicious sandwiches and charming ambiance made for a special experience. 
                The exceptional service truly enhanced our time, making it a perfect way to spend a couple of hours in beautiful London."
)

Post.create(
  user_id: "1",
  city_id: "2",
  address: "Calle de Goya, 57A, Salamanca, 28001 Madrid, Spain",
  title: "Great local foods! `La Casa del Abuelo GOYA`",
  category: "Restaurants",
  description: "We went here to try some local food and ordered garlic shrimp, it's called gambas al ajillo. 
                It was so good and hot and spicy. We really loved the food and environment here."
)

Post.create(
  user_id: "1",
  city_id: "2",
  address: "Plaza De San Miguel, S/N, 28005 Madrid Spain",
  title: "Enjoyed street market, Mercado San Miguel!",
  category: "Best spots",
  description: "This was such a lovely surprise - make sure you want to eat something. 
                It's in a wonderful building and showcases lots of delicious foods, 
                all for buying and eating there by grabbing one of the stand up bars or stools and tables. "
)

Post.create(
  user_id: "1",
  city_id: "2",
  address: "Pariser Platz, 10117 Berlin, Germany",
  title: "iconic gate, Brandenburger Tor!",
  category: "Best spots",
  description: "One of the most attractive tourist spots in Berlin.
                Good to see such old construction along with a lot of visitors."
)

Post.create(
  user_id: "1",
  city_id: "3",
  address: "Philharmoniker Str. 4, 1010 Vienna, Austria",
  title: "The best Sacher Torte ever!",
  category: "Restaurants",
  description: "I highly recommend trying the original Sachertorte in Vienna—it's a must! 
                I loved it and suggest booking in advance to ensure you get to enjoy this iconic dessert. "
)

Post.create(
  user_id: "1",
  city_id: "2",
  address: "East Side Gallery, Mühlenstraße, 10243 Berlin, Germany",
  title: "Berlin's history",
  category: "Art&Culture",
  description: "The East Side Gallery is a must-visit for any traveler looking 
                to experience Berlin's vibrant culture and tumultuous past.
                They are a powerful reminder of the Cold War and the importance of freedom."
)

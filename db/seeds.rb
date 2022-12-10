# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts " 🌱️ Seeding data..."

users = User.create([
    {username: "Jevans", email: "stan@gmail.com", password: "123456789", password_confirmation: "123456789"},
    {username: "Otis", email: "stano@ymail.com", password: "987654321", password_confirmation: "987654321"},
])

properties = Property.create([
    {title: "The Oasis", description: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to", price:"30000000", image_url: "https://www.capitalfm.co.ke/lifestyle/files/2022/02/GTC-017-1024x682.jpg", size:10000},
    {title: "Global Trade Centre", description: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to", price:"10000", image_url: "https://www.capitalfm.co.ke/lifestyle/files/2022/02/GTC-017-1024x682.jpg", size:50000},
    {title: "The Empierial", description: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to", price:"60000000", image_url: "https://www.capitalfm.co.ke/lifestyle/files/2022/02/GTC-017-1024x682.jpg", size:3000},
    {title: "Sarit Centre", description: "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to", price:"100000000", image_url: "https://www.capitalfm.co.ke/lifestyle/files/2022/02/GTC-017-1024x682.jpg", size:5000}
        
])

reviews = Review.create([
    {rating:1, comment: "How safe is the neighbourhood?", property_id:1, user_id:2},
    {rating:5, comment: "Any mortgage options?", property_id:2, user_id:1},
    {rating:3, comment: "Is there a rent to pay financing model for this", property_id:3, user_id:2},
    {rating:4, comment: "Any service charges for utilities?", property_id:4, user_id:1}
])

puts "Done Seeding 🍂️"
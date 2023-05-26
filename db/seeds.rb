# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting existing vtubers..."
Vtuber.destroy_all
puts "Database cleared."

puts "Creating Vtubers"

suisei_main_image_url = "https://hololyfe-seeds.s3.amazonaws.com/suiseimain.png"
suisei_image_urls = [
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage1.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage2.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage3.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage4.png",
  "https://hololyfe-seeds.s3.amazonaws.com/suiseiimage5.png",
]
suisei_vid_url = "https://hololyfe-seeds.s3.amazonaws.com/suiseivid.mp4"

Vtuber.create!(
  name: "Hoshimachi Suisei",
  jpname: "星街すいせい",
  quote: "\"It's your shooting star, your diamond in the rough, idol VTuber Hoshimachi Suisei!\"",
  description: "A forever18 VTuber who deeply loves singing and idols.
  Her dream is to one day hold a live concert in Tokyo Budokan.",
  main_image_url: suisei_main_image_url,
  image_urls: suisei_image_urls,
  main_vid_url: suisei_vid_url,
)

puts "All done!"

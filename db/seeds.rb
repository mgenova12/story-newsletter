# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do 

  newsletter = Newsletter.create
  newsletter.created_at = (rand*10).days.ago
  newsletter.save

  5.times do 
    Story.create(title:Faker::Book.title , tag: Faker::Book.genre, content: Faker::Lorem.paragraph(5), newsletter_id: newsletter.id)
  end

end
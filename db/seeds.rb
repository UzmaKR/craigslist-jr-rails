# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |n|
  Category.create(title: Faker::Lorem.word)
end



@categories = Category.all
@categories.each do |category|
  10.times do |n|
    category.posts <<  Post.create(title: Faker::Lorem.sentence, 
                                   body: Faker::Lorem.paragraph)
  end
end
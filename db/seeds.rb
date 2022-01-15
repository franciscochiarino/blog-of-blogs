# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'

User.destroy_all

50.times do
  User.create!(
    blog_name: Faker::Book.title,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "200x200"),
    email: Faker::Internet.email,
    password: 'testtest'
  )
end
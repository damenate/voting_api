# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
party = ["Democratic", "Republican", "Independent", "TRUMP"]
10.times do
    Candidate.create(
    name: Faker::Name.name,
    party: party.sample,
    hometown: Faker::Address.city,
    district: rand(1..100)
    )
  end

# 200.times do
#     Vote.create(
#     voter: Faker::Name.name,
#     candidate: Faker::Name.name
#     )
#   end

200.times do
  Voter.create(
  name: Faker::Name.name,
  party: party.sample
  )
  end

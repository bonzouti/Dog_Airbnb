require 'faker'
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

10.times do 
  city = City.create!(city_name: Faker::Address.city)
  end

puts "10 villes ont été créées"

10.times do 
  dog =Dog.create!(name: Faker::Dog.name,sex: Faker::Dog.gender, city: City.all.sample)
  end

puts "10 chiens ont été nommés"

10.times do 
  dogsitter =Dogsitter.create!(name: Faker::Name.first_name, city: City.all.sample)
  end

puts "10 dogsitter ont été nommés"

10.times do
  stroll = Stroll.create!(date: Faker::Time.between(2.days.ago, Date.today, :day), city: City.all.sample, dog: Dog.all.sample, dogsitter: Dogsitter.all.sample)
  end
   puts "10 strolls ont été créées"

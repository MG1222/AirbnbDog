# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


DogSitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all


city_1 = City.create(city_name: 'Bordeaux :)')
city_2 = City.create(city_name: 'Arcachon')
city_3 = City.create(city_name: 'Paris')
city_4 = City.create(city_name: 'Toulouse')
city_5 = City.create(city_name: 'Limoges')
puts "ok"



array_dog = []
20.times do
  dog = Dog.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed)
  dog.city = [city_1, city_2, city_3, city_4, city_5].sample
  dog.save
  array_dog << dog
end
puts "ok"

# on va lier les tabs.
15.times do 
  dog_sitter = DogSitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  dog_sitter.city = [city_1, city_2, city_3, city_4, city_5].sample 
  dog_sitter.save

  stroll_1 = Stroll.create(dog_sitter: dog_sitter, dog: array_dog.sample)
  stroll_2 = Stroll.create(dog_sitter: dog_sitter, dog: array_dog.sample)
  stroll_3 = Stroll.create(dog_sitter: dog_sitter, dog: array_dog.sample)

  stroll_1.city = [city_1, city_2, city_3, city_4, city_5].sample
  stroll_1.save

  stroll_2.city = [city_1, city_2, city_3, city_4, city_5].sample
  stroll_2.save

  stroll_3.city = [city_1, city_2, city_3, city_4, city_5].sample
  stroll_3.save

end
puts "ok"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.create!(name: "Lyon")
City.create!(name: "Paris")
City.create!(name: "Marseille")
City.create(name: "Bordeaux")
City.create(name: "Lille")
cities_list = City.all

5.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Educator.subject, zip_code: Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1), city: cities_list.sample)
end

5.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: cities_list.sample)
end


5.times do
  doctors_list = Doctor.all
  patients_list = Patient.all
  cities_list = City.all
  appointment = Appointment.create!(date: Faker::Date.between(from: '2021-04-23', to: '2021-11-25'), doctor: doctors_list.sample, patient: patients_list.sample, city: cities_list.sample)
end




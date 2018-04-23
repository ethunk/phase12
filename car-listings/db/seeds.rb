# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Manufacturer.create(name: "Ford", country: "USA")
Manufacturer.create(name: "Nissan", country: "South Korea")
Manufacturer.create(name: "Volkswagen", country: "Germany")
Manufacturer.create(name: "Porsche", country: "Italy")
Manufacturer.create(name: "Honda", country: "Japan")

Car.create(manufacturer_id: 1, name: 'Mustang', color: "Red", year: "1999" , mileage: "100000")
Car.create(manufacturer_id: 2, name: 'Versa', color: "Orange", year: "2000" , mileage: "100000")
Car.create(manufacturer_id: 3, name: 'Golf', color: "Blue", year: "2002" , mileage: "100000")
Car.create(manufacturer_id: 4, name: 'Cayenne', color: "Green", year: "2004" , mileage: "100000")
Car.create(manufacturer_id: 5, name: 'Civic', color: "Black", year: "2009" , mileage: "100000")

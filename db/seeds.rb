Owner.destroy_all
Car.destroy_all
CarOwner.destroy_all

lisa = Owner.create(name: "Lisa")
rob = Owner.create(name: "Rob")

taurus = Car.create(make: "Ford", model: "Taurus", year: 2015, price: 15000)
civic = Car.create(make: "Honda", model: "Civic", year: 2018, price: 19000)
cayenne = Car.create(make: "Porsche", model: "Cayenne", year: 2018, price: 50000)

lisa.cars << cayenne

20.times do
    Owner.create(name: Faker::Name.name )
end

40.times do
    Car.create(make: Faker::Vehicle.make, model: Faker::Vehicle.model, year: Faker::Number.between(2000, 2020), price: Faker::Number.between(10000, 85000))
end
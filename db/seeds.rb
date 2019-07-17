Owner.destroy_all
Car.destroy_all
CarOwner.destroy_all

lisa = Owner.create(name: "Lisa")
rob = Owner.create(name: "Rob")

taurus = Car.create(make: "Ford", model: "Taurus", year: 2015, price: 15000)
civic = Car.create(make: "Honda", model: "Civic", year: 2018, price: 19000)
cayenne = Car.create(make: "Porsche", model: "Cayenne", year: 2018, price: 50000)

lisa.cars << cayenne
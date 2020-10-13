# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pet_type = PetType.create(name: "Dog")
pet_type_two = PetType.create(name: "Cat")

pet = Pet.create(pet_type_id: 1, name: "Boo", description: "Very loving, black fur, doesn't bark, medium size, brown eyeballs.", location: "Louisville, Kentucky in MiddleTown", contact_number: 555-867-5309)
pet_two = Pet.create(pet_type_id: 2, name: "Squish", description: "Green eyeballs, kind of fiesty, really scared, dark grey fur.", location: "the moon", contact_number: 555-867-5309)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

retail        = BusinessType.create(name:   "retail")
entertainment = BusinessType.create(name:   "entertainment")
restaurant    = BusinessType.create(name:   "restaurant/food")
office        = BusinessType.create(name:   "office/admin")
gym           = BusinessType.create(name:   "gym/sport")
medical       = BusinessType.create(name:   "medical")
service       = BusinessType.create(name:   "services")
travel        = BusinessType.create(name:   "travel/hotel")

#apartment complexes?

Business.create({
  name:             "Freebirds World Burrito",
  business_type_id: restaurant.id
})
# {
#   name:             "Fuzzy’s Taco Shop",
#   business_type_id: restaurant.id
# },
# {
#   name:             "Galaxy Café",
#   business_type_id: restaurant.id
# },
# {
#   name:             "Hillside Farmacy",
#   business_type_id: restaurant.id
# },
# {
#   name:             "Home Slice Pizza",
#   business_type_id: restaurant.id
# })
# businesses.save

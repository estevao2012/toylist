# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Toytype.destroy_all
#Type.destroy_all

#fiction = Type.create!(btype: 'Fiction')
#non_fiction = Type.create!(btype: 'Non-Fiction')
#development = Type.create!(btype: 'IT-Development')

Toytype.create!([{
  toytype: "Soft Toy",
  description: "Soft stuffed animals."

},
{
  toytype: "Teething",
  description: "Toy for chewing on."
},
{
  toytype: "Soft Book",
  description: "Soft cloth book."
},
{
  toytype: "Floor Mat",
  description: "Mat for playing on the floor"
},
{
  toytype: "Ball",
  description: "All types, colours, shapes and sizes of ball."
},
{
  toytype: "Learning",
  description: "Learning toy for teaching about words, shapes colours etc.."
}
])

p "Created #{Toytype.count} toy types"
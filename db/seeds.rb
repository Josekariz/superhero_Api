# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding data"
puts "..................."
puts "................."
puts "............."


h1=Heroe.create!({name: "Kamala Khan", super_name: "Ms. Marvel" })
p1=Power.create!({name: "super strength", description: "gives the wielder super-human strengths"})
hp1=HeroPower.create!({strength: "Average",power_id: p1.id, heroe_id: h1.id})

puts '######### 1 done'



p2=Power.create!({name: "Fighting", description: "His abilities mainly consist of physical abilities magnified to an immeasurable degree: strength is the true power of Saitama, with speed, stamina, and durability being mere side-effects"})

h2=Heroe.create!({name: "Saitama", super_name: "One Punch man" })

hp2=HeroPower.create!({strength: "Strong",power_id: p2.id, heroe_id: h2.id})
puts '######### 2 done'


h3=Heroe.create!({name: "Jonathan Kent", super_name: "Superboy" })

p3=Power.create!({name: "Super strength ", description: "A mighty and strong boy takes after his father in more than one way."})
p4=Power.create!({name: "Freeze breath ", description: "This power has most villans chillled out and relaxed!!!"})
hp3=HeroPower.create!({strength: "Average",power_id: p3.id, heroe_id: h3.id})
hp4=HeroPower.create!({strength: "Average",power_id: p4.id, heroe_id: h3.id})
puts '######### 3 done'



p5=Power.create!({name: "Flying rod", description: "Being one of the youngest heros in the Dc world this power has potential to grow to immense strength"})
h5=Heroe.create!({name: "Brec Bassinger ", super_name: "Stargirl" })
hp5=HeroPower.create!({strength: "Weak",power_id: p5.id, heroe_id: h5.id})
puts '######### all  done'


puts "............."
puts "................."
puts "..................."
puts "Done seeding data"

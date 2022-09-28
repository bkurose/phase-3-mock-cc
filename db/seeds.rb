puts "Destroying all old entries..."
Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
macbook = Freebie.create(item_name: "MacBook", value: 1000)
ipod = Freebie.create(item_name: "iPod", value: 100)
gift_card = Freebie.create(item_name: "Gift Card", value: 25)
cash = Freebie.create(item_name: "Cash", value: 10)

puts "Associating data..."
rick.freebies << macbook
morty.freebies << ipod
meseeks.freebies << gift_card
rick.freebies << cash

google.freebies << macbook
facebook.freebies << ipod
dunder.freebies << gift_card
google.freebies << cash

puts "Seeding done!"

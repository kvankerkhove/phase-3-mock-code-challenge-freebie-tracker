puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
10.times do
    freebies = ['Hat', 'Shirt', 'Pen', 'Sticker', 'Phone case']
    value = rand(1..50)

    Freebie.create(item_name: freebies.sample, value: value, dev_id: rand(1..4), company_id: rand(1..4))
end

puts "Seeding done!"

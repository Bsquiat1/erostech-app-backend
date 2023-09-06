# db/seeds.rb

require 'faker'

# Seed data for customers
10.times do
  Customer.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    address: Faker::Address.street_address
  )
end

# Seed data for loading_depots
10.times do
  LoadingDepot.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address
  )
end

# Seed data for gate_passes
2.times do |i|
  GatePass.create(
    pass_number: "GP2023-00#{i + 1}",
    date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    customer: Customer.all.sample,
    loading_depot: LoadingDepot.all.sample
  )
end

# Seed data for invoice_items
10.times do |i|
  InvoiceItem.create(
    name: "Product #{('A'..'Z').to_a[i]}",
    quantity: Faker::Number.between(from: 1, to: 10),
    price: Faker::Number.decimal(l_digits: 2),
    invoice: Invoice.all.sample
  )
end

# Seed data for invoices (similar approach for other tables)

puts "Seed data created successfully!"

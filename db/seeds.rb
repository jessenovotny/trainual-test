statuses = ['active', 'inactive']
users = []
1000.times do
  users << {
    name: Faker::Name.name,
    phone: Faker::PhoneNumber.phone_number,
    email: "#{rand(0..100)}+" + Faker::Internet.email,
    status: statuses[rand(0..1)],
    title: Faker::Job.title
  }
end
User.create users
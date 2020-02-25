def random_stats
  ['active', 'inactive'][rand(0..1)]
end

def random_phone
  "(#{rand(111..999)}) " +
    "#{rand(111..999)}-" +
    "#{rand(1111..9999)}"
end

def random_email
  Faker::Internet.email.
    split('@').join("+#{rand(100..999)}@")
end

users = []
1000.times do
  users << {
    name: Faker::Name.name,
    phone: random_phone,
    email: random_email,
    status: random_stats,
    title: Faker::Job.title
  }
end
User.create users


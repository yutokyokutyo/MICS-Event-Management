30.times do |n|
  title  = Faker::Name.title
  description = Faker::Lorem.sentence(5)
  location = Faker::Address.time_zone
  start_time = Faker::Time.between(DateTime.now + 20, DateTime.now)
  end_time = Faker::Time.between(DateTime.now + 22, DateTime.now)
  capacity = Faker::Number.between(5, 100)
  Event.create!(title:  title,
              sub_title: title,
              description: description,
              location: location,
              start_time: start_time,
              end_time: end_time,
              capacity: capacity)
end

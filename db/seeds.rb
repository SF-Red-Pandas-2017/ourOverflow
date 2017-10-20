require 'faker'

5.times{ User.create!(username: Faker::Name.name, password: "password")}

5.times{ Question.create!(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs)}

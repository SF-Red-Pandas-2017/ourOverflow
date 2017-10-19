require 'faker'

5.times{ User.create(username: Faker::Name.name, password: "password")}


# Create a main sample user.
User.create!(name: "Admin User", email: "example@test.com",
  password: "foobar", password_confirmation: "foobar",
  admin: true, activated: true, activated_at: Time.zone.now)

# Generate a bunch of additional users.
99.times do |n|
  name = Faker::Games::Dota.hero
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password, activated: true, activated_at: Time.zone.now)
end



Fabricator(:user) do
  username { Faker::Internet.username }
  email { Faker::Internet.email }
  phone { Faker::PhoneNumber }
end

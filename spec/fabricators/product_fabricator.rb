Fabricator(:product) do
  code { Faker::Code }
  name { Faker::Commerce.product_name }
  category { Faker::Cannabis.category }
end

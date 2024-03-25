Fabricator(:order) do
  user_id { Fabricate(:user) }
  product_id { Fabricate(:product) }
  order_date { Faker::Date.in_date_period }
end

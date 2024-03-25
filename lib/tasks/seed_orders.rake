namespace :uploads do
  desc "Seed orders data from the CSV"
  task seed_orders: :environment do
    file_path = Rails.root.join('public/order_details.csv')
    
    CSV.foreach(file_path, headers: true) do |row|
      user = User.find_by!(email: row['USER_EMAIL'])
      product = Product.find_by!(code: row['PRODUCT_CODE'])
      oreder_data = {
        user_id: user.id,
        product_id: product.id,
        order_date: row['ORDER_DATE']
      }

      Order.create!(oreder_data)
    rescue ActiveRecord::RecordNotFound, ActiveRecord::RecordInvalid => e
      # Catch this exception and push it to invalid data list
      puts e.message
    end
  end
end

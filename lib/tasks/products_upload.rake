namespace :uploads do
  desc "Upload products data from the CSV"
  task products_upload: :environment do
    file_path = Rails.root.join('public/products.csv')
    
    CSV.foreach(file_path, headers: true) do |row|
      Product.create!(row.to_hash.transform_keys(&:downcase))
    rescue ActiveRecord::RecordInvalid => e
      # Catch this exception and push it to invalid data list
      puts e.message
    end
  end
end

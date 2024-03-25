require 'csv'

namespace :uploads do
  desc "Upload users from the CSV"
  task users_upload: :environment do
    file_path = Rails.root.join('public/users.csv')
    
    CSV.foreach(file_path, headers: true) do |row|
      User.create!(row.to_hash.transform_keys(&:downcase))
    rescue ActiveRecord::RecordInvalid => e
      # Catch this exception and push it to invalid data list
      puts e.message
    end
  end
end

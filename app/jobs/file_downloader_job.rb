require 'csv'

class FileDownloaderJob < ApplicationJob
  queue_as :default
  
  def perform(all)
    headers = Order::HEADERS
    CSV.generate(headers: true) do |csv|
      csv << headers
      all.each do |order|
        csv << OrderDetails.new(order: order).call
      end
    end
  end
end

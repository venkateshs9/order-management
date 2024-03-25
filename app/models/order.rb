class Order < ApplicationRecord
  #=====Constants=====================================

  HEADERS = %w(USERNAME USER_EMAIL PRODUCT_CODE PRODUCT_NAME
               PRODUCT_CATEGORY ORDER_DATE).freeze

  #=====Associations==================================

  belongs_to :user
  belongs_to :product

  #=====Delegates=====================================

  delegate :username, :email, to: :user, allow_nil: true
  delegate :name, :code, :category, to: :product, allow_nil: true,
            prefix: :product

  #=====Validations===================================

  validates :order_date, presence: true

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  def self.to_csv
    FileDownloaderJob.new.perform_async(all)
  end

  #=====Instance Methods==============================
end

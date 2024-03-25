class Order < ApplicationRecord
  #=====Constants=====================================

  #=====Associations==================================

  belongs_to :user
  belongs_to :product

  #=====Validations===================================

  validates :order_date, presense: true

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

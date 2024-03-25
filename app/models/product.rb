class Product < ApplicationRecord
  #=====Constants=====================================

  #=====Associations==================================

  has_many :orders

  #=====Validations===================================

  validates :code, :name, presence: true

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

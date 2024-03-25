class Product < ApplicationRecord
  #=====Constants=====================================

  #=====Associations==================================

  has_many :orders, depedent: :nullify

  #=====Validations===================================

  validates :code, :name, presense: true

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

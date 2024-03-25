class User < ApplicationRecord
  #=====Constants=====================================

  #=====Associations==================================

  has_many :orders

  #=====Validations===================================

  validates :email, presence: true

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

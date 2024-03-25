class User < ApplicationRecord
  #=====Constants=====================================

  #=====Associations==================================

  has_many :orders, depedent: :nullify

  #=====Validations===================================

  validates :email, presense: true

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

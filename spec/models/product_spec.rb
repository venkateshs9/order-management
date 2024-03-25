require 'rails_helper'

RSpec.describe Product, type: :model do
  #=====Constants=====================================

  #=====Associations==================================

  it { is_expected.to have_many(:orders) }

  #=====Validations===================================

  it { is_expected.to validate_presence_of :code }
  it { is_expected.to validate_presence_of :name }

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

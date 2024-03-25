require 'rails_helper'

RSpec.describe User, type: :model do
  #=====Constants=====================================

  #=====Associations==================================

  it { is_expected.to have_many(:orders) }

  #=====Validations===================================

  it { is_expected.to validate_presence_of :email }

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

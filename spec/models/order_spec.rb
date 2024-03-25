require 'rails_helper'

RSpec.describe Order, type: :model do
  #=====Constants=====================================

  let(:headers) do
    %w(USERNAME USER_EMAIL PRODUCT_CODE PRODUCT_NAME
       PRODUCT_CATEGORY ORDER_DATE)
  end

  it { expect(described_class::HEADERS).to eql(headers) }

  #=====Associations==================================

  it { should belong_to(:user) }
  it { should belong_to(:product) }

  #=====Validations===================================

  #=====Callbacks=====================================

  #=====Scopes========================================

  #=====Class Methods=================================

  #=====Instance Methods==============================
end

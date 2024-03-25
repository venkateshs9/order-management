class OrderDetails
  def initialize(order:)
    @order = order
  end

  def call
    [
      order.username,
      order.email,
      order.product_code,
      order.product_name,
      order.product_category,
      order.order_date
    ]
  end

  private

  attr_reader :order
end

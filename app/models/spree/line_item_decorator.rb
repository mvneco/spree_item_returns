module Spree
  module LineItemDecorator
  
    def is_returnable?
      return false unless product.returnable?
      return true if product.return_time.zero?
      Time.current < (order.completed_at + product.return_time.days)
    end

  end
end

Spree::LineItem.prepend(Spree::LineItemDecorator)

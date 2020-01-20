module Spree
  module OrderSpreeItemReturnsDecorator

    SHIPPED_STATES = ['shipped', 'partial'] unless defined? SHIPPED_STATES

    # Crucial to prevent multiple invocations of self.prepended(base)!
    @@already_prepended = false unless defined? @@already_prepended

    def self.prepended(base)

      # Crucial to prevent multiple invocations of self.prepended(base)!
      return if self.class_variable_get(:@@already_prepended)
      self.class_variable_set(:@@already_prepended, true)
      
      base.scope :returned, -> { where(shipment_state: SHIPPED_STATES) }
    end

    def has_returnable_products?
      products.returnable.exists?
    end

    def has_returnable_line_items?
      line_items.any?(&:is_returnable?)
    end

  end
end

Spree::Order.prepend(Spree::OrderSpreeItemReturnsDecorator)

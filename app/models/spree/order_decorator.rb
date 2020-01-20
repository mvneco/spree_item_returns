module Spree
  module OrderDecorator

    SHIPPED_STATES = ['shipped', 'partial']

    # Crucial to prevent multiple invocations of self.prepended(base)!
    @@already_prepended = false unless defined? @@already_prepended

    def self.prepended(base)

      # Crucial to prevent multiple invocations of self.prepended(base)!
      return if self.class_variable_get(:@@already_prepended)
      self.class_variable_set(:@@already_prepended, true)
      
      base.scope :returned, -> { where(shipment_state: base.SHIPPED_STATES) }
    end

    def has_returnable_products?
      products.returnable.exists?
    end

    def has_returnable_line_items?
      line_items.any?(&:is_returnable?)
    end

  end
end

Spree::Order.prepend(Spree::OrderDecorator)

module Spree
  module ProductDecorator
  
    # Crucial to prevent multiple invocations of self.prepended(base)!
    @@already_prepended = false unless defined? @@already_prepended

    def self.prepended(base)

      # Crucial to prevent multiple invocations of self.prepended(base)!
      return if self.class_variable_get(:@@already_prepended)
      self.class_variable_set(:@@already_prepended, true)

      base.validates :return_time, numericality: { greater_than_or_equal_to: 0 }
      base.scope :returnable, -> { where(returnable: true) }
    end

  end
end

Spree::Product.prepend(Spree::ProductDecorator)

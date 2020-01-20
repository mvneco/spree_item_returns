module Spree
  module UserDecorator
  
    # Crucial to prevent multiple invocations of self.prepended(base)!
    @@already_prepended = false unless defined? @@already_prepended

    def self.prepended(base)

      # Crucial to prevent multiple invocations of self.prepended(base)!
      return if self.class_variable_get(:@@already_prepended)
      self.class_variable_set(:@@already_prepended, true)

      base.has_many :return_authorizations, through: :orders
    end

  end
end

Spree::User.prepend(Spree::UserDecorator)

module Spree
  module AppConfigurationSpreeItemReturnsDecorator

    # Crucial to prevent multiple invocations of self.prepended(base)!
    @@already_prepended = false unless defined? @@already_prepended

    def self.prepended(base)

      # Crucial to prevent multiple invocations of self.prepended(base)!
      return if self.class_variable_get(:@@already_prepended)
      self.class_variable_set(:@@already_prepended, true)

      base.preference :return_initiation_admin_mail_address, :string, default: 'spree@example.com'
    end
  end
end

#Spree::AppConfiguration.prepend(Spree::AppConfigurationSpreeItemReturnsDecorator)

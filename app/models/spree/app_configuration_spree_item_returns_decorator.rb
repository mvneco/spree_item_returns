module Spree
  module AppConfigurationSpreeItemReturnsDecorator

    # Crucial to prevent multiple invocations of self.prepended(base)!
    @@already_prepended = false unless defined? @@already_prepended

    def self.prepended(base)

      # Crucial to prevent multiple invocations of self.prepended(base)!
      return if self.class_variable_get(:@@already_prepended)
      self.class_variable_set(:@@already_prepended, true)

      puts 'Spree::AppConfigurationSpreeItemReturnsDecorator.self.prepended(base) :: A1'
      puts "Spree::AppConfigurationSpreeItemReturnsDecorator.self.prepended(base) :: A2 #{base.inspect}"
      puts "Spree::AppConfigurationSpreeItemReturnsDecorator.self.prepended(base) :: A3 #{self.inspect}"
      base.preference :return_initiation_admin_mail_address, :string, default: 'spree@example.com'
      puts 'Spree::AppConfigurationSpreeItemReturnsDecorator.self.prepended(base) :: B1'
      puts "Spree::AppConfigurationSpreeItemReturnsDecorator.self.prepended(base) :: B2 #{base.has_preference?('return_initiation_admin_mail_address')}"
      puts "Spree::AppConfigurationSpreeItemReturnsDecorator.self.prepended(base) :: B3 #{base.has_preference?(:return_initiation_admin_mail_address)}"
      
    end
  end
end

Spree::AppConfiguration.prepend(Spree::AppConfigurationSpreeItemReturnsDecorator)

# Added diagnostics

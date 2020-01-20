module Spree
  module AppConfigurationDecorator

    def prepended(base)
      base.preference :return_initiation_admin_mail_address, :string, default: 'spree@example.com'
    end
  end
end

Spree::AppConfiguration.prepend(Spree::AppConfigurationDecorator)

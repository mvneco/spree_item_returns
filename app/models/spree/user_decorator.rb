module Spree
  module UserDecorator
  
    def prepended(base)
      base.has_many :return_authorizations, through: :orders
    end

  end
end

Spree::User.prepend(Spree::UserDecorator)

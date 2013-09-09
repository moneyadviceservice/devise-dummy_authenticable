require 'devise/strategies/authenticatable'

module Devise
  module Strategies
    class DummyAuthenticable < Authenticatable
      def valid?
        params['controller'] == 'sessions' && params['action'] == 'create'
      end

      def authenticate!
        resource = mapping.to.first_or_create

        success!(resource)
      end
    end
  end
end

Warden::Strategies.add(:dummy_authenticable,
                       Devise::Strategies::DummyAuthenticable)

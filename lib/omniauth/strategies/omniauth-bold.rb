require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bold < OmniAuth::Strategies::OAuth2
      option :name, 'bold'

      option :client_options, {
        site: 'https://boldcommerce.com/',
        authorize_url: 'https://apps.boldapps.net/accounts/dashboard/authorize',
        token_url: 'https://api.boldcommerce.com/auth/oauth2/token'
      }

      def callback_url
        options[:callback_url] || super
      end
    end
  end
end

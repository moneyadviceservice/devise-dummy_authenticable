require 'devise/models/dummy_authenticable'
require 'devise/strategies/dummy_authenticable'

Devise.add_module(:dummy_authenticable, { strategy:   true,
                                          model:      true,
                                          controller: :sessions,
                                          route:      { session: :routes } })

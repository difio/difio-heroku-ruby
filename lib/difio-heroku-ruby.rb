require "common-ruby-difio"

module Difio
    class Heroku < Difio::DifioBase
        configure({
            'user_id'  => ENV['DIFIO_USER_ID'],
            'app_name' => ENV['DIFIO_APP_NAME'],
            'app_uuid' => `hostname`.chomp,  # this looks like an UUID
            'app_type' => 'ruby-' + RUBY_VERSION,
            'app_url'  => ENV['DIFIO_APP_URL'],
            'app_vendor' => 2,  # Heroku
            'url' => ENV['DIFIO_REGISTER_URL'],
        })
    end
end

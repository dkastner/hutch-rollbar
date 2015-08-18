require "hutch/rollbar/version"
require 'hutch/logging'
require 'rollbar'

module Hutch

  class Rollbar

    def handle(message_id, payload, consumer, ex)
      ::Rollbar.error ex, {
        message_id: message_id,
        payload: payload,
        consumer: consumer
      }
    end

  end

end

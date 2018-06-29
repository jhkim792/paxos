module Api
  class PingController < ApplicationController

    RESPONSE = {
      data: {
        type: "Ping Response",
        message: "PONG"
      }
    }.freeze

    def show
      render json: RESPONSE
    end
  end
end

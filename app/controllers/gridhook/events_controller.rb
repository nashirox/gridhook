module Gridhook
  class EventsController < ActionController::Base
    protect_from_forgery with: :null_session

    def create
      Gridhook::Event.process(params)
      head :ok
    end
  end
end

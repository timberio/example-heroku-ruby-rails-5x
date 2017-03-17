require 'ostruct'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def current_user
      @current_user ||= begin
        user = OpenStruct.new
        user.id = 1234
        user.first_name = "Ben"
        user.last_name = "Johnson"
        user.email = "hi@timber.io"
        user
      end
    end
end

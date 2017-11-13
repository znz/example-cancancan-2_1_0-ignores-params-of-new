class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private def current_user
    nil # dummy
  end
end

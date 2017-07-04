class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :manejo_vista_admin

  private
  def manejo_vista_admin
    if devise_controller?
      "login"
    else
      "application"
    end
  end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :set_a_flash_message

  def set_a_flash_message
    flash.now[:success] = "This is a success"
    # flash.now[:notice] = "This is a notice"
    # flash.now[:error] = "This is an error."
  end

end

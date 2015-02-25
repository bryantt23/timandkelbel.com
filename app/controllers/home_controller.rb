class HomeController < ApplicationController
  def frontpage
    @guest = Guest.new
  end
end

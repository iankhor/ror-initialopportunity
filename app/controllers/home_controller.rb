class HomeController < ApplicationController

  def index
    @developments = Development.all
  end

end

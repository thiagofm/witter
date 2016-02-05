class PagesController < ApplicationController
  def index
  end

  def contact
    @coordinate_x = rand * 100
    @coordinate_y = rand * 100
  end
end

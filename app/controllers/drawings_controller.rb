class DrawingsController < ApplicationController
  def index
    @drawings = Drawing.all
  end
end

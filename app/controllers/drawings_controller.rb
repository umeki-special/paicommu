class DrawingsController < ApplicationController
  before_action :set_drawing, only: [:edit, :show]

  def index
    @drawings = Drawing.all
  end

  def new
    @drawing = Drawing.new
  end

  def create
    Drawing.create(drawing_params)
    redirect_to '/'
  end

  def destroy
    drawing = Drawing.find(params[:id])
    drawing.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    drawing = Drawing.find(params[:id])
    drawing.update(drawing_params)
    redirect_to root_path
  end

  def show
  end

  private
  def drawing_params
    params.require(:drawing).permit(:name, :image, :description)
  end

  def set_drawing
    @drawing = Drawing.find(params[:id])
  end

end

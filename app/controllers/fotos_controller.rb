class FotosController < ApplicationController
  before_action :set_foto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fotos = Foto.all
    respond_with(@fotos)
  end

  def show
    respond_with(@foto)
  end

  def new
    @foto = Foto.new
    respond_with(@foto)
  end

  def edit
  end

  def create
    @foto = Foto.new(foto_params)
    @foto.save
    respond_with(@foto)
  end

  def update
    @foto.update(foto_params)
    respond_with(@foto)
  end

  def destroy
    @foto.destroy
    respond_with(@foto)
  end

  private
    def set_foto
      @foto = Foto.find(params[:id])
    end

    def foto_params
      params.require(:foto).permit(:description, :image)
    end
end

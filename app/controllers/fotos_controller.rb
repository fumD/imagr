class FotosController < ApplicationController
  before_action :set_foto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @fotos = Foto.all
    respond_with(@fotos)
  end

  def show
    respond_with(@foto)
  end

  def new
    @foto = Foto.new #current_user.fotos.build
    respond_with(@foto)
  end

  def edit
  end

#you modified the following
  def create
    @foto = Foto.new(foto_params)
   if @foto.save
     redirect_to @foto, notice: 'foto was successfully created.'
   else
     render action: 'new'
   end
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

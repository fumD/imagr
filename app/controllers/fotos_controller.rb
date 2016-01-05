class FotosController < ApplicationController
  before_action :set_foto, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  #respond_to :html

  def index
    @fotos = Foto.all
    #respond_with(@fotos)
  end

  def show
    #respond_with(@foto)
  end

  def new
    @foto = current_user.fotos.build
    #respond_with(@foto)
  end

  def edit
  end

#you modified the following
  def create
    @foto = current_user.fotos.build(foto_params)
   if @foto.save
     redirect_to @foto, notice: '7oto was successfully added.'
   else
     render action: 'new'
   end
    #respond_with(@foto)
  end

  def update
   if @foto.update(foto_params)
     redirect_to @foto, notice: '7oto was successfully updated.'
   else
     render action: 'edit'
   end
    #respond_with(@foto)
  end

  def destroy
    @foto.destroy
    #respond_with(@foto)
  end

  private
    def set_foto
      @foto = Foto.find(params[:id])
    end
    
    def correct_user
        @foto = current_user.fotos.find_by(id: params[:id])
        redirect_to foto_path, notice: "Unauthorized action" if @foto.nil?
    end

    def foto_params
      params.require(:foto).permit(:description, :image)
    end
end

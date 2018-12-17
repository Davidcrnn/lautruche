class BoutiquesController < ApplicationController
  before_action :set_boutique, only: [:show, :edit, :update, :destroy]

  def index

    @boutiques = Boutique.where.not(latitude: nil, longitude: nil)
    @markers = @boutiques.map do |boutique|
      {
        lng: boutique.longitude,
        lat: boutique.latitude
      }
    end
  end
  def show
  end

  def new
    @boutique = Boutique.new
  end

  def create
    @boutique = Boutique.new(boutique_params)
     if @boutique.save
      redirect_to boutiques_path
    else
      render :new
    end
  end
  def update
  end

  def destroy
  end

  private
    def set_boutique
      @boutique = Boutique.find(params[:id])
    end


    def boutique_params
      params.require(:boutique).permit(:name, :address)
    end
end

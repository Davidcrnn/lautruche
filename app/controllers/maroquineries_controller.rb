class MaroquineriesController < ApplicationController
  before_action :set_maroquinerie, only: [:show, :edit, :update, :destroy]
  def index
    @maroquineries = Maroquinerie.all
    @maroquineries = Maroquinerie.order('created_at DESC')
  end

  def show
    @maroquineries = Maroquinerie.all
  end

  def new
    @maroquinerie = Maroquinerie.new
    @mapicture = @maroquinerie.mapictures.build

  end

  def create
    @maroquinerie = Maroquinerie.create!(maroquinerie_params)
    respond_to do |format|
      if @maroquinerie.save
        if params[:mapictures]
          params[:mapictures].each do |mapicture|
            @maroquinerie.mapictures.create(mapicture: mapicture)
          end
        end

        format.html { redirect_to @maroquinerie, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @maroquinerie }
      else
        format.html { render action: 'new' }
        format.json { render json: @maroquinerie.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @maroquinerie.update(maroquinerie_params)
        if params[:mapictures]
          params[:mapictures].each do |mapicture|
            @maroquinerie.mapictures.create(mapicture: mapicture)
          end
        end

        format.html { redirect_to @maroquinerie, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @maroquinerie }
      else
        format.html { render :edit }
        format.json { render json: @maroquinerie.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @maroquinerie.destroy
    redirect_to maroquineries_path
  end

  private

  def set_maroquinerie
    @maroquinerie = Maroquinerie.find(params[:id])
  end

  def maroquinerie_params
    params.require(:maroquinerie).permit(:titre, :description, :prix, :maphoto, :visible, :categorie, mapictures_attributes: [:mapicture, :maroquinerie_id])
  end
end

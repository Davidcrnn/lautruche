class VerreriesController < ApplicationController
before_action :set_verrerie, only: [:show, :edit, :update, :destroy]
  def index
    @verreries = Verrerie.all
    @verreries = Verrerie.order('created_at DESC')
  end

  def show
    @verreries = Verrerie.all
  end

  def new
    @verrerie = Verrerie.new
    @picture = @verrerie.pictures.build

  end

  def create
    @verrerie = Verrerie.create!(verrerie_params)
    respond_to do |format|
      if @verrerie.save
        if params[:pictures]
          params[:pictures].each do |picture|
            @verrerie.pictures.create(picture: picture)
          end
        end

        format.html { redirect_to @verrerie, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @verrerie }
      else
        format.html { render action: 'new' }
        format.json { render json: @verrerie.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @verrerie.update(verrerie_params)
        if params[:pictures]
          params[:pictures].each do |picture|
            @verrerie.pictures.create(picture: picture)
          end
        end

        format.html { redirect_to @verrerie, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @verrerie }
      else
        format.html { render :edit }
        format.json { render json: @verrerie.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @verrerie.destroy
    redirect_to verreries_path
  end

  private

  def set_verrerie
    @verrerie = Verrerie.find(params[:id])
  end

  def verrerie_params
    params.require(:verrerie).permit(:titre, :description, :prix, :photo, :visible, :categorie, art_attributes: [:picture, :verrerie_id])
  end
end

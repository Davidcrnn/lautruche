class LuminairesController < ApplicationController
  before_action :set_luminaire, only: [:show, :edit, :update, :destroy]
  def index
    @luminaires = Luminaire.all
    @luminaires = Luminaire.order('created_at DESC')
  end

  def show
    @luminaires = Luminaire.all
  end

  def new
    @luminaire = Luminaire.new
    @lupicture = @luminaire.lupictures.build

  end

  def create
    @luminaire = Luminaire.create!(luminaire_params)
    respond_to do |format|
      if @luminaire.save
        if params[:lupictures]
          params[:lupictures].each do |lupicture|
            @luminaire.lupictures.create(lupicture: lupicture)
          end
        end

        format.html { redirect_to @luminaire, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @luminaire }
      else
        format.html { render action: 'new' }
        format.json { render json: @luminaire.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @luminaire.update(luminaire_params)
        if params[:lupictures]
          params[:lupictures].each do |lupicture|
            @luminaire.lupictures.create(lupicture: lupicture)
          end
        end

        format.html { redirect_to @luminaire, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @luminaire }
      else
        format.html { render :edit }
        format.json { render json: @luminaire.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @luminaire.destroy
    redirect_to luminaires_path
  end

  private

  def set_luminaire
    @luminaire = Luminaire.find(params[:id])
  end

  def luminaire_params
    params.require(:luminaire).permit(:titre, :description, :prix, :luphoto, :visible, :categorie, lupictures_attributes: [:lupicture, :luminaire_id])
  end
end

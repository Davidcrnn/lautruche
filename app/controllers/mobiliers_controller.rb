class MobiliersController < ApplicationController
  before_action :set_mobilier, only: [:show, :edit, :update, :destroy]
  def index
    @mobiliers = Mobilier.all
    @mobiliers = Mobilier.order('created_at DESC')
  end

  def show
    @mobiliers = Mobilier.all
  end

  def new
    @mobilier = Mobilier.new
    @mpicture = @mobilier.mpictures.build

  end

  def create
    @mobilier = Mobilier.create!(mobilier_params)
    respond_to do |format|
      if @mobilier.save
        if params[:mpictures]
          params[:mpictures].each do |mpicture|
            @mobilier.mpictures.create(mpicture: mpicture)
          end
        end

        format.html { redirect_to @mobilier, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @mobilier }
      else
        format.html { render action: 'new' }
        format.json { render json: @mobilier.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @mobilier.update(mobilier_params)
        if params[:mpictures]
          params[:mpictures].each do |mpicture|
            @mobilier.mpictures.create(mpicture: mpicture)
          end
        end

        format.html { redirect_to @mobilier, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @mobilier }
      else
        format.html { render :edit }
        format.json { render json: @mobilier.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @mobilier.destroy
    redirect_to mobiliers_path
  end

  private

  def set_mobilier
    @mobilier = Mobilier.find(params[:id])
  end

  def mobilier_params
    params.require(:mobilier).permit(:titre, :description, :prix, :mphoto, :visible, :categorie, mpictures_attributes: [:picture, :mobilier_id])
  end
end

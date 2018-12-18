class AccessoiresController < ApplicationController
  before_action :set_accessoire, only: [:show, :edit, :update, :destroy]
  def index
    @accessoires = Accessoire.all
    @accessoires = Accessoire.order('created_at DESC')
  end

  def show
    @accessoires = Accessoire.all
  end

  def new
    @accessoire = Accessoire.new
    @apicture = @accessoire.apictures.build

  end

  def create
    @accessoire = Accessoire.create!(accessoire_params)
    respond_to do |format|
      if @accessoire.save
        if params[:apictures]
          params[:apictures].each do |apicture|
            @accessoire.apictures.create(apicture: apicture)
          end
        end

        format.html { redirect_to @accessoire, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @accessoire }
      else
        format.html { render action: 'new' }
        format.json { render json: @accessoire.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @accessoire.update(accessoire_params)
        if params[:apictures]
          params[:apictures].each do |apicture|
            @accessoire.apictures.create(apicture: apicture)
          end
        end

        format.html { redirect_to @accessoire, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @accessoire }
      else
        format.html { render :edit }
        format.json { render json: @accessoire.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @accessoire.destroy
    redirect_to accessoires_path
  end

  private

  def set_accessoire
    @accessoire = Accessoire.find(params[:id])
  end

  def accessoire_params
    params.require(:accessoire).permit(:titre, :description, :prix, :aphoto, :visible, :categorie, apictures_attributes: [:apicture, :accessoire_id])
  end
end

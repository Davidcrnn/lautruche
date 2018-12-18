class EnfantsController < ApplicationController
  before_action :set_enfant, only: [:show, :edit, :update, :destroy]
  def index
    @enfants = Enfant.all
    @enfants = Enfant.order('created_at DESC')
  end

  def show
    @enfants = Enfant.all
  end

  def new
    @enfant = Enfant.new
    @epicture = @enfant.epictures.build

  end

  def create
    @enfant = Enfant.create!(enfant_params)
    respond_to do |format|
      if @enfant.save
        if params[:epictures]
          params[:epictures].each do |epicture|
            @enfant.epictures.create(epicture: epicture)
          end
        end

        format.html { redirect_to @enfant, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @enfant }
      else
        format.html { render action: 'new' }
        format.json { render json: @enfant.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @enfant.update(enfant_params)
        if params[:epictures]
          params[:epictures].each do |epicture|
            @enfant.epictures.create(epicture: epicture)
          end
        end

        format.html { redirect_to @enfant, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @enfant }
      else
        format.html { render :edit }
        format.json { render json: @enfant.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @enfant.destroy
    redirect_to enfantx_path
  end

  private

  def set_enfant
    @enfant = Enfant.find(params[:id])
  end

  def enfant_params
    params.require(:enfant).permit(:titre, :description, :prix, :ephoto, :visible, :categorie, epictures_attributes: [:epicture, :enfant_id])
  end
end

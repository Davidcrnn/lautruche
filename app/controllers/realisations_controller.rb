class RealisationsController < ApplicationController
  before_action :set_realisation, only: [:show, :edit, :update, :destroy]
  def index
    @realisations = Realisation.all
    @realisations = Realisation.order('created_at DESC')
  end

  def show
    @realisations = Realisation.all
  end

  def new
    @realisation = Realisation.new
    @rpicture = @realisation.rpictures.build

  end

  def create
    @realisation = Realisation.create!(realisation_params)
    respond_to do |format|
      if @realisation.save
        if params[:rpictures]
          params[:rpictures].each do |rpicture|
            @realisation.rpictures.create(rpicture: rpicture)
          end
        end

        format.html { redirect_to @realisation, notice: "Un nouveau projet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @realisation }
      else
        format.html { render action: 'new' }
        format.json { render json: @realisation.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @realisation.update(realisation_params)
        if params[:rpictures]
          params[:rpictures].each do |rpicture|
            @realisation.rpictures.create(rpicture: rpicture)
          end
        end

        format.html { redirect_to @realisation, notice: "Un projet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @realisation }
      else
        format.html { render :edit }
        format.json { render json: @realisation.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @realisation.destroy
    redirect_to Realisations_path
  end

  private

  def set_realisation
    @realisation = Realisation.find(params[:id])
  end

  def realisation_params
    params.require(:realisation).permit(:titre, :description, :adresse, :rphoto, rpictures_attributes: [:rpicture, :realisation_id])
  end
end

class LifestylesController < ApplicationController
  before_action :set_lifestyle, only: [:show, :edit, :update, :destroy]
  def index
    @lifestyles = Lifestyle.all
    @lifestyles = Lifestyle.order('created_at DESC')
  end

  def show
    @lifestyles = Lifestyle.all
  end

  def new
    @lifestyle = Lifestyle.new
    @lpicture = @lifestyle.lpictures.build

  end

  def create
    @lifestyle = Lifestyle.create!(lifestyle_params)
    respond_to do |format|
      if @lifestyle.save
        if params[:lpictures]
          params[:lpictures].each do |lpicture|
            @lifestyle.lpictures.create(lpicture: lpicture)
          end
        end

        format.html { redirect_to @lifestyle, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @lifestyle }
      else
        format.html { render action: 'new' }
        format.json { render json: @lifestyle.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @lifestyle.update(lifestyle_params)
        if params[:lpictures]
          params[:lpictures].each do |lpicture|
            @lifestyle.lpictures.create(lpicture: lpicture)
          end
        end

        format.html { redirect_to @lifestyle, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @lifestyle }
      else
        format.html { render :edit }
        format.json { render json: @lifestyle.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @lifestyle.destroy
    redirect_to lifestyles_path
  end

  private

  def set_lifestyle
    @lifestyle = Lifestyle.find(params[:id])
  end

  def lifestyle_params
    params.require(:lifestyle).permit(:titre, :description, :prix, :lphoto, :visible, :categorie, lpictures_attributes: [:lpicture, :lifestyle_id])
  end
end

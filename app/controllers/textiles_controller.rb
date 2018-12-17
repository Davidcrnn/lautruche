class TextilesController < ApplicationController
  before_action :set_textile, only: [:show, :edit, :update, :destroy]
  def index
    @textiles = Textile.all
    @textiles = Textile.order('created_at DESC')
  end

  def show
    @textiles = Textile.all
  end

  def new
    @textile = Textile.new
    @tepicture = @textile.tepictures.build

  end

  def create
    @textile = Textile.create!(textile_params)
    respond_to do |format|
      if @textile.save
        if params[:tepictures]
          params[:tepictures].each do |tepicture|
            @textile.tepictures.create(tepicture: tepicture)
          end
        end

        format.html { redirect_to @textile, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @textile }
      else
        format.html { render action: 'new' }
        format.json { render json: @textile.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @textile.update(textile_params)
        if params[:tepictures]
          params[:tepictures].each do |tepicture|
            @textile.tepictures.create(tepicture: tepicture)
          end
        end

        format.html { redirect_to @textile, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @textile }
      else
        format.html { render :edit }
        format.json { render json: @textile.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @textile.destroy
    redirect_to textiles_path
  end

  private

  def set_textile
    @textile = Textile.find(params[:id])
  end

  def textile_params
    params.require(:textile).permit(:titre, :description, :prix, :tephoto, :visible, :categorie, tepictures_attributes: [:tepicture, :textile_id])
  end
end

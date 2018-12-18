class BijousController < ApplicationController
  before_action :set_bijou, only: [:show, :edit, :update, :destroy]
  def index
    @bijous = Bijou.all
    @bijous = Bijou.order('created_at DESC')
  end

  def show
    @bijous = Bijou.all
  end

  def new
    @bijou = Bijou.new
    @bpicture = @bijou.bpictures.build

  end

  def create
    @bijou = Bijou.create!(bijou_params)
    respond_to do |format|
      if @bijou.save
        if params[:bpictures]
          params[:bpictures].each do |bpicture|
            @bijou.bpictures.create(bpicture: bpicture)
          end
        end

        format.html { redirect_to @bijou, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @bijou }
      else
        format.html { render action: 'new' }
        format.json { render json: @bijou.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @bijou.update(bijou_params)
        if params[:bpictures]
          params[:bpictures].each do |bpicture|
            @bijou.bpictures.create(bpicture: bpicture)
          end
        end

        format.html { redirect_to @bijou, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @bijou }
      else
        format.html { render :edit }
        format.json { render json: @bijou.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @bijou.destroy
    redirect_to bijous_path
  end

  private

  def set_bijou
    @bijou = Bijou.find(params[:id])
  end

  def bijou_params
    params.require(:bijou).permit(:titre, :description, :prix, :bphoto, :visible, :categorie, bpictures_attributes: [:bpicture, :bijou_id])
  end
end

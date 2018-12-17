class TablesController < ApplicationController
before_action :set_table, only: [:show, :edit, :update, :destroy]
  def index
    @tables = Table.all
    @tables = Table.order('created_at DESC')
  end

  def show
    @tables = Table.all
  end

  def new
    @table = Table.new
    @tpicture = @table.tpictures.build

  end

  def create
    @table = Table.create!(table_params)
    respond_to do |format|
      if @table.save
        if params[:tpictures]
          params[:tpictures].each do |tpicture|
            @table.tpictures.create(tpicture: tpicture)
          end
        end

        format.html { redirect_to @table, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @table }
      else
        format.html { render action: 'new' }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
  end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @table.update(table_params)
        if params[:tpictures]
          params[:tpictures].each do |tpicture|
            @table.tpictures.create(tpicture: tpicture)
          end
        end

        format.html { redirect_to @table, notice: "Un objet vient d'être modifié." }
        format.json { render :show, status: :ok, location: @table }
      else
        format.html { render :edit }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
  end
  end

  def destroy

    @table.destroy
    redirect_to tables_path
  end

  private

  def set_table
    @table = Table.find(params[:id])
  end

  def table_params
    params.require(:table).permit(:titre, :description, :prix, :tphoto, :visible, :categorie, tpictures_attributes: [:tpicture, :table_id])
  end
end

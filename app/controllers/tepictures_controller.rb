class TepicturesController < ApplicationController
  def destroy
    @tepicture = Tepicture.find(params[:id])
    @tepicture.destroy
    redirect_back(fallback_location: root_path)
  end
end

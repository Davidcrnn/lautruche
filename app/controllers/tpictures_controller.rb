class TpicturesController < ApplicationController
  def destroy
    @tpicture = Tpicture.find(params[:id])
    @tpicture.destroy
    redirect_back(fallback_location: root_path)
  end
end

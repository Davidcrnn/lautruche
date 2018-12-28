class RpicturesController < ApplicationController
  def destroy
    @rpicture = Rpicture.find(params[:id])
    @rpicture.destroy
    redirect_back(fallback_location: root_path)
  end
end

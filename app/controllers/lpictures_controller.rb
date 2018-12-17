class LpicturesController < ApplicationController
  def destroy
    @lpicture = Lpicture.find(params[:id])
    @lpicture.destroy
    redirect_back(fallback_location: root_path)
  end
end

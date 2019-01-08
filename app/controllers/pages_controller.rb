class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    @realisations = Realisation.all
  end
  def mention
  end

  def presse
  end
end

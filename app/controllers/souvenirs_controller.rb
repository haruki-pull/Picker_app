class SouvenirsController < ApplicationController
  def new
  end

  def show
    @souvenirs = Souvenir.all
  end

  def edit
  end
end

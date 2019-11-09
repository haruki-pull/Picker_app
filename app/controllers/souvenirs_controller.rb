class SouvenirsController < ApplicationController
  def new
    @souvenir = Souvenir.new
  end

  def index
    @souvenirs = Souvenir.all
  end

  def create
  end

  def show
  
  end

  def edit
  end

  def update
  end
  
  def destroy
  end

end

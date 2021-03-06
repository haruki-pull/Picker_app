class SouvenirsController < ApplicationController

  before_action :set_souvenir_params, only: [:show, :edit, :update, :destroy]
  before_action :already_logged_in, only: [:create, :edit, :update, :destroy]
  def new
    @souvenir = Souvenir.new
    flash[:info] = "項目を記入してください"
  end

  def index
    @souvenirs = Souvenir.paginate(page: params[:page], per_page: 5)
  end

  def create
    @souvenir = current_user.souvenirs.build(souvenir_params)
      if @souvenir.save
        flash[:success] = "投稿に成功しました"
        redirect_to action: 'index'
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
    if @souvenir.update(souvenir_params)
      flash[:success] = "編集に成功しました"
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end
  
  def destroy
    @souvenir.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end

  private

  def souvenir_params
    params.require(:souvenir).permit(:name, :spot, :price, :picture, :genre, :comment)
  end

  def set_souvenir_params
    @souvenir = Souvenir.find(params[:id])
  end
end

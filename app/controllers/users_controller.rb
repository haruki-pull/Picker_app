class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update, :destroy]
  before_action :already_logged_in, only: [:edit, :show, :update, :destroy]
  def index
    @users = User.all
  end

  def show
    @souvenirs = @user.souvenirs.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "ユーザー登録に成功しました"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = "編集に成功しました"
      redirect_to action: 'index'
    else
      render 'show'
    end

  end

  def destroy
    @user.destroy
    flash[:success] = "削除に成功しました"
    redirect_to  root_url
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
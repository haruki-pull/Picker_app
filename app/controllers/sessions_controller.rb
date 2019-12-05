class SessionsController < ApplicationController
  def new
  
  end

  def create
  user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      login user
      flash[:success] = "ログインに成功しました"
      redirect_to user
    else
      flash.now[:warning] = "ログインに失敗しました。"
      render 'new'
    end
  end

  def destroy
    logout
    flash[:info] = "ログアウトしました"
    redirect_to root_url

  end
end

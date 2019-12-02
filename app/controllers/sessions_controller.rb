class SessionsController < ApplicationController
  def new
  
  end

  def create
  #データベース上からemailをキーにしてユーザーを探し、変数userに代入
  #userがデータベース上に存在し、かつパスワードが正しかった時
  user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "ログインに成功しました"
      redirect_to user
    end
  end

  def destroy
  
  end
end

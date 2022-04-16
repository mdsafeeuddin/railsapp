class UserController < ApplicationController
  def create
    if request.post?
      user = User.create(fullname: params[:fullname], username: params[:username], password: params[:password], status: params[:status])
      redirect_to "/user/view/" + user.id.to_s
    end
  end

  def view
    @user = User.find_by(id: params[:id])
  end

  def show
    @users = User.all
  end

  def update
    if request.post?
      user = User.find_by(id: params[:id])
      user.update(fullname: params[:fullname], username: params[:username], password: params[:password], status: params[:status])
      redirect_to "/user/view/" + user.id.to_s
    else
      @user = User.find_by(id: params[:id])
    end
  end

  def delete
    user = User.find_by(id: params[:id])
    user.destroy
    redirect_to "/user/show"
  end
end

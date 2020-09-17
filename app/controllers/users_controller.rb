class UsersController < ApplicationController
  include UsersHelper

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.save

    flash.notice = "User '#{@user.username}' Created!"

    redirect_to users_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    flash.notice = "User '#{@user.username}' Deleted!"

    redirect_to users_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    flash.notice = "User '#{@user.username}' Updated!"

    redirect_to users_path(@user)
  end
end

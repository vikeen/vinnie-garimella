class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    if @user.save
      redirect_to root_path, flash[:success] => 'User Successfully created!'
    else
      render 'new'
    end
  end
end

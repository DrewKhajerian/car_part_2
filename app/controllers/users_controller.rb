class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])

  	if @user.save
      auto_login(@user)
      redirect_to :root, :notice => "Account created" 
    else
      render :new
    end
  	
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy
  	@user = User.find(params[:id])
  	
  end
end

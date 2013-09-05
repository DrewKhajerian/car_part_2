class SessionsController < ApplicationController
  def create
  end

  def destroy
  	logout
  	redirect_to :root, notice: "Logged out"
  end
end

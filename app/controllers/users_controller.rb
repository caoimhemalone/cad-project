class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_patients = @user.patients
    
        
  @users = User.search(params[:search]) #Compare the variables with the parameters of the search

  end
end

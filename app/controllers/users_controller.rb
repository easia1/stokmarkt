class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :restrict_action

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
    if @user.save
      UserMailer.account_admin_created(@user).deliver_later
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end

  end



  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end


  def my_portfolio
  end

  #! change function
  def change_status
    @user = User.find(params[:id])
    @user.update(status: params[:status])
    if params[:status] == 'approved'
      UserMailer.account_approved(@user).deliver_later
    end
    redirect_to root_path
  end
  
  
  private

  def restrict_action
    redirect_to root_path unless current_user.admin? 
  end

  def user_params
      params.require(:user).permit(:email, :name, :password, :status, :balance)
  end

end


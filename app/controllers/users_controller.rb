class UsersController < ApplicationController
  # before_action :authenticate_user!

  def index
    @users = User.all
  end


  
  # def create
  #   @user = User.new(user_params)

  #   respond_to do |format|
  #     if @user.save
  #       UserMailer.with(user: User.first).welcome_email.deliver_later
  #       format.html { redirect to(@user, notice: 'User was successfully created.') }
  #       format.json { render action: 'new' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end



end

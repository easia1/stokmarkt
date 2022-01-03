class DashboardsController < ApplicationController
    include DashboardsHelper
    include ActionView::Helpers::NumberHelper

    def index
        redirect_to users_path if current_user.admin?
        @stocks = Stock.where(user_id: current_user.id)

    end
  
    def add_balance
        amount = params[:amount].to_d
        user = User.find(current_user.id)
        respond_to do |format|
            if user.update(balance: user.balance + amount)
                format.html { redirect_to root_path, notice: "You have added #{number_to_currency(amount)} to your account" }
                format.json { head :no_content }
            end
        end
    end
end

class DashboardsController < ApplicationController
    include DashboardsHelper

    def index
        redirect_to users_path if current_user.admin?

        client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
            endpoint: 'https://sandbox.iexapis.com/v1')

		@trending_stocks = client.stock_market_list(:mostactive)

    end
  
    def add_balance
        amount = params[:amount].to_d
        user = User.find(current_user.id)
        respond_to do |format|
            if user.update(balance: user.balance + amount)
                format.html { redirect_to root_path, notice: "You have added $#{number_to_currency(amount)} to your account" }
                format.json { head :no_content }
            end
        end
    end
end

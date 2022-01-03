class StocksController < ApplicationController

	def index
	client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
		endpoint: 'https://sandbox.iexapis.com/v1')

	@trending_stocks = client.stock_market_list(:mostactive)
	end

	def search
		if params[:stock].present?
			@stock = Stock.new_lookup(params[:stock])
			if @stock
				respond_to do |format|
					format.js { render partial: 'users/result'}
				end
			else
				respond_to do |format|
					flash.now[:alert] = "Please enter a valid symbol to search"
					format.js { render partial: 'users/result' }
				end
			end
		else
			respond_to do |format|
				flash.now[:alert] = "Please enter a symbol to search"
				format.js { render partial: 'users/result' }
			end
		end
	end

	def show
		if params[:stock_ticker]
			@stock = Stock.new_lookup(params[:stock_ticker])
			@company_logo = "https://storage.googleapis.com/iex/api/logos/#{@stock.ticker.upcase}.png"
		else
			client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
				endpoint: 'https://sandbox.iexapis.com/v1')
			
			@stock = Stock.new
			@stock.ticker = params[:symbol]
			@company_logo = "https://storage.googleapis.com/iex/api/logos/#{@stock.ticker}.png"
			@stock.name = params[:company_name]
			
			@stock.last_price = params[:latest_price]
		end
	end

	def create
		stock = Stock.new(name: params[:name], ticker: params[:ticker], last_price: params[:last_price], quantity: params[:quantity])
		stock.save
		redirect_to root_path
	end

	def buy_stock

	end

end
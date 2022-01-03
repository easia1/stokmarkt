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
		if params[:transaction] == 'buy'
			@transaction_path = buy_stock_path
			@page_header = 'Buy Stock'
		else
			@transaction_path = sell_stock_path
			@page_header = 'Sell Stock'
		end
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

	# def create
	# 	stock = Stock.new(name: params[:name], ticker: params[:ticker], last_price: params[:last_price], quantity: params[:quantity])
	# 	stock.save
	# 	redirect_to root_path
	# end

	#! refactor
	def buy_stock
		user = User.find(current_user.id)
		existing_stock = Stock.find_by(:user_id => current_user.id, :ticker => params[:ticker])
		total_amount = params[:quantity].to_i * params[:last_price].to_i
		stock = Stock.new(name: params[:name], ticker: params[:ticker], quantity: params[:quantity], user_id: current_user.id)
		if total_amount <= current_user.balance && params[:quantity].to_i > 0
			if user.update(balance: user.balance - total_amount)
				if existing_stock
					existing_stock.update(quantity: existing_stock.quantity.to_i + params[:quantity].to_i)
				else
					stock.save
				end
				Transaction.create(name: params[:name], ticker: params[:ticker], quantity: params[:quantity], user_id: current_user.id, transaction_type: 'buy', price: params[:last_price])
				redirect_to root_path
			end
		else
			respond_to do |format|
				format.html { redirect_to root_path, notice: "Invalid Quantity" }
				# format.json { head :no_content }
			end
		end	
	end

	def sell_stock
		user = User.find(current_user.id)
		existing_stock = Stock.find_by(:user_id => current_user.id, :ticker => params[:ticker], quantity: 1..)
		total_amount = params[:quantity].to_i * params[:last_price].to_i
		
		if existing_stock && params[:quantity].to_i > 0 && params[:quantity].to_i <= existing_stock.quantity.to_i
			if user.update(balance: user.balance + total_amount)
				existing_stock.update(quantity: existing_stock.quantity.to_i - params[:quantity].to_i)
				Transaction.create(name: params[:name], ticker: params[:ticker], quantity: params[:quantity], user_id: current_user.id, transaction_type: 'sell', price: params[:last_price])
				redirect_to root_path
			end	
		else
			respond_to do |format|
				format.html { redirect_to root_path, notice: "You do not have enough stocks" }
				# format.json { head :no_content }
			end
		end	
	end
end
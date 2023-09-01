# app/controllers/order_confirmations_controller.rb

class OrderConfirmationsController < ApplicationController
    before_action :set_order_confirmation, only: [:show, :update, :destroy]
  
    # GET /order_confirmations
    def index
      @order_confirmations = OrderConfirmation.all
      render json: @order_confirmations
    end
  
    # GET /order_confirmations/1
    def show
      render json: @order_confirmation
    end
  
    # POST /order_confirmations
    def create
      @order_confirmation = OrderConfirmation.new(order_confirmation_params)
  
      if @order_confirmation.save
        render json: @order_confirmation, status: :created, location: @order_confirmation
      else
        render json: @order_confirmation.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /order_confirmations/1
    def update
      if @order_confirmation.update(order_confirmation_params)
        render json: @order_confirmation
      else
        render json: @order_confirmation.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /order_confirmations/1
    def destroy
      @order_confirmation.destroy
    end
  
    private
  
    def set_order_confirmation
      @order_confirmation = OrderConfirmation.find(params[:id])
    end
  
    def order_confirmation_params
      params.require(:order_confirmation).permit(:order_number, :date, :customer_id)
    end
  end
  

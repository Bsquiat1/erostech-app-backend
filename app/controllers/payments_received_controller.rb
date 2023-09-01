# app/controllers/payment_received_controller.rb

class PaymentsReceivedController < ApplicationController
    before_action :set_payment_received, only: [:show, :update, :destroy]
  
    # GET /payment_received
    def index
      @payment_received = PaymentReceived.all
      render json: @payment_received
    end
  
    # GET /payment_received/1
    def show
      render json: @payment_received
    end
  
    # POST /payment_received
    def create
      @payment_received = PaymentReceived.new(payment_received_params)
  
      if @payment_received.save
        render json: @payment_received, status: :created, location: @payment_received
      else
        render json: @payment_received.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /payment_received/1
    def update
      if @payment_received.update(payment_received_params)
        render json: @payment_received
      else
        render json: @payment_received.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /payment_received/1
    def destroy
      @payment_received.destroy
    end
  
    private
  
    def set_payment_received
      @payment_received = PaymentReceived.find(params[:id])
    end
  
    def payment_received_params
      params.require(:payment_received).permit(:invoice_id, :payment_date, :amount_received)
    end
  end
  

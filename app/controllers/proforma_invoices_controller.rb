# app/controllers/proforma_invoices_controller.rb

class ProformaInvoicesController < ApplicationController
    before_action :set_proforma_invoice, only: [:show, :update, :destroy]
  
    # GET /proforma_invoices
    def index
      @proforma_invoices = ProformaInvoice.all
      render json: @proforma_invoices
    end
  
    # GET /proforma_invoices/1
    def show
      render json: @proforma_invoice
    end
  
    # POST /proforma_invoices
    def create
      @proforma_invoice = ProformaInvoice.new(proforma_invoice_params)
  
      if @proforma_invoice.save
        render json: @proforma_invoice, status: :created, location: @proforma_invoice
      else
        render json: @proforma_invoice.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /proforma_invoices/1
    def update
      if @proforma_invoice.update(proforma_invoice_params)
        render json: @proforma_invoice
      else
        render json: @proforma_invoice.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /proforma_invoices/1
    def destroy
      @proforma_invoice.destroy
    end
  
    private
  
    def set_proforma_invoice
      @proforma_invoice = ProformaInvoice.find(params[:id])
    end
  
    def proforma_invoice_params
      params.require(:proforma_invoice).permit(:invoice_number, :date, :subtotal, :discount, :tax, :total, :currency, :customer_id)
    end
  end
  

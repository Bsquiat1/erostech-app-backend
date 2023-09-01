class GatePassesController < ApplicationController
    before_action :set_gate_pass, only: [:show, :update, :destroy]
  
    # GET /gate_pass
    def index
      @gate_pass = GatePass.all
      render json: @gate_pass
    end
  
    # GET /gate_pass/1
    def show
      render json: @gate_pass
    end
  
    # POST /gate_pass
    def create
      @gate_pass = GatePass.new(gate_pass_params)
  
      if @gate_pass.save
        render json: @gate_pass, status: :created, location: @gate_pass
      else
        render json: @gate_pass.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /gate_pass/1
    def update
      if @gate_pass.update(gate_pass_params)
        render json: @gate_pass
      else
        render json: @gate_pass.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /gate_pass/1
    def destroy
      @gate_pass.destroy
    end
  
    private
  
    def set_gate_pass
      @gate_pass = GatePass.find(params[:id])
    end
  
    def gate_pass_params
      params.require(:gate_pass).permit(:load_authority_id, :date, :issued_by)
    end
  end
  
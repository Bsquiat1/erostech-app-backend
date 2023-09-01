# app/controllers/load_authority_controller.rb

class LoadAuthoritiesController < ApplicationController
    before_action :set_load_authority, only: [:show, :update, :destroy]
  
    # GET /load_authority
    def index
      @load_authority = LoadAuthority.all
      render json: @load_authority
    end
  
    # GET /load_authority/1
    def show
      render json: @load_authority
    end
  
    # POST /load_authority
    def create
      @load_authority = LoadAuthority.new(load_authority_params)
  
      if @load_authority.save
        render json: @load_authority, status: :created, location: @load_authority
      else
        render json: @load_authority.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /load_authority/1
    def update
      if @load_authority.update(load_authority_params)
        render json: @load_authority
      else
        render json: @load_authority.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /load_authority/1
    def destroy
      @load_authority.destroy
    end
  
    private
  
    def set_load_authority
      @load_authority = LoadAuthority.find(params[:id])
    end
  
    def load_authority_params
      params.require(:load_authority).permit(:order_number, :date, :loading_depot_id)
    end
  end
  

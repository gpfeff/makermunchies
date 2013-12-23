class DeliveryListsController < ApplicationController
  before_action :set_delivery_list, only: [:show, :edit, :update, :destroy]

  # GET /delivery_lists
  # GET /delivery_lists.json
  def index
    @delivery_lists = DeliveryList.all
  end

  # GET /delivery_lists/1
  # GET /delivery_lists/1.json
  def show
  end

  # GET /delivery_lists/new
  def new
    @delivery_list = DeliveryList.new
  end

  # GET /delivery_lists/1/edit
  def edit
  end

  # POST /delivery_lists
  # POST /delivery_lists.json
  def create
    @delivery_list = DeliveryList.new(delivery_list_params)

    respond_to do |format|
      if @delivery_list.save
        format.html { redirect_to @delivery_list, notice: 'Delivery list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @delivery_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @delivery_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_lists/1
  # PATCH/PUT /delivery_lists/1.json
  def update
    respond_to do |format|
      if @delivery_list.update(delivery_list_params)
        format.html { redirect_to @delivery_list, notice: 'Delivery list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @delivery_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_lists/1
  # DELETE /delivery_lists/1.json
  def destroy
    @delivery_list.destroy
    respond_to do |format|
      format.html { redirect_to delivery_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_list
      @delivery_list = DeliveryList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_list_params
      params[:delivery_list]
    end
end

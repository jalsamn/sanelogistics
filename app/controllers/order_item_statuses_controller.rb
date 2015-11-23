class OrderItemStatusesController < ApplicationController
  before_action :set_order_item_status, only: [:show, :edit, :update, :destroy]

  # GET /order_item_statuses
  # GET /order_item_statuses.json
  def index
    @order_item_statuses = OrderItemStatus.all
  end

  # GET /order_item_statuses/1
  # GET /order_item_statuses/1.json
  def show
  end

  # GET /order_item_statuses/new
  def new
    @order_item_status = OrderItemStatus.new
  end

  # GET /order_item_statuses/1/edit
  def edit
  end

  # POST /order_item_statuses
  # POST /order_item_statuses.json
  def create
    @order_item_status = OrderItemStatus.new(order_item_status_params)

    respond_to do |format|
      if @order_item_status.save
        format.html { redirect_to @order_item_status, notice: 'Order item status was successfully created.' }
        format.json { render :show, status: :created, location: @order_item_status }
      else
        format.html { render :new }
        format.json { render json: @order_item_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_item_statuses/1
  # PATCH/PUT /order_item_statuses/1.json
  def update
    respond_to do |format|
      if @order_item_status.update(order_item_status_params)
        format.html { redirect_to @order_item_status, notice: 'Order item status was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_item_status }
      else
        format.html { render :edit }
        format.json { render json: @order_item_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_item_statuses/1
  # DELETE /order_item_statuses/1.json
  def destroy
    @order_item_status.destroy
    respond_to do |format|
      format.html { redirect_to order_item_statuses_url, notice: 'Order item status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_item_status
      @order_item_status = OrderItemStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_item_status_params
      params.require(:order_item_status).permit(:name)
    end
end

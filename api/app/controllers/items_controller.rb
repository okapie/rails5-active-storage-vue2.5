class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    # Adjust JSON structure to build via index.json.jbuilder.
  end

  # GET /items/1
  # GET /items/1.json
  def show
    # Adjust JSON structure to build via index.json.jbuilder.
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      # In the case of this project, we only return a status so that a callback can be received in the front-end side.
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # In the case, we don't use the following update/destory action.
  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item, status: :ok, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :picture)
    end
end

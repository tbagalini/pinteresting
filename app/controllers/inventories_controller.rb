class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  def index
    @inventories = Inventory.all
  end
  def show
  end

  def new
    @inventory = current_user.Inventories.build
  end

  def edit
  end
  def create
    @inventory = current_user.Inventories.build(inventory_params)

    if @inventory.save
      redirect_to @inventory, notice: 'Inventory was successfully created.'
    else
      render :new
    end
  end
  def update
    if @inventory.update(inventory_params)
      redirect_to @inventory, notice: 'Inventory was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @inventory.destroy
    redirect_to inventories_url, notice: 'Inventory was successfully destroyed.'
  end

  private
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end
    def inventory_params
      params.require(:inventory).permit(:description, :part_number, :alternate_part_number, :condition_code, :qty, :mfg_code, :serial_number, :part_comments, :price)
    end

end

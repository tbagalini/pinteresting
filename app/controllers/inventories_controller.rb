class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :search]

  def index
    @inventories = Inventory.all.order("created_at DESC")
  end

  def show
  end

  def search
    if params[:part_number].present?
        @inventories = Inventory.order("created_at DESC").where("LOWER(part_number) like ?", "%%#{params[:part_number].downcase}%") if params[:part_number].present? 
  end
end

  def new
    @inventory = current_user.Inventories.build
  end

  def edit
  end

  def create
    @inventory = current_user.Inventories.build(inventory_params)
    @inventory.user_id = current_user.id

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

  def import
    Inventory.destroy_all(user_id: current_user.id)
    Inventory.import(params[:file], current_user.id)
    redirect_to root_url, notice: "Inventory imported."
  end

  private

    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

  def correct_user
    @inventory = current_user.Inventories.find_by(id: params[:id])
    redirect_to inventories_path, notice: "you are unable to edit another companies inventory" if @inventory.nil?
  end

    def inventory_params
      params.require(:inventory).permit(:description, :part_number, :alternate_part_number, :condition_code, :qty, :mfg_code, :serial_number, :part_comments, :price)
    end
end

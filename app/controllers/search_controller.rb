 class SearchController < ApplicationController
 def search
    if params[:part_number].present?
        @inventories = Inventory.where("LOWER(part_number) like ?", "%%#{params[:part_number].downcase}%") if params[:part_number].present? 
   end
  end
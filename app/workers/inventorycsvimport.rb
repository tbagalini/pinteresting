class Inventorycsvimport
	@queue = :Inventorycsvimport
	def self.perform(file, user_id)
		Inventory.destroy_all(user_id: current_user.id)
    Inventory.import(params[:file], current_user.id)
  end
end
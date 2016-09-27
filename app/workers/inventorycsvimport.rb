class Inventorycsvimport
	@queue = :Inventorycsvimport
	def self.perform(user_id)
  	Inventory.destroy_all(user_id: options[:user_id])
    Inventory.import(options[:file], options[:user_id])
  end
end
json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :description, :part_number, :alternate_part_number, :condition_code, :qty, :mfg_code, :serial_number, :part_comments, :price
  json.url inventory_url(inventory, format: :json)
end

class Inventory < ApplicationRecord
	belongs_to :user
end

def self.import(file)
  allowed_attributes = [ "id","description","part_number","price","created_at","updated_at", "alternate_part_number", "condition_code", "qty", "mfg_code", "serial_number", "part_comments"]
  spreadsheet = open_spreadsheet(file.path)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    inventory = find_by_id(row["id"]) || new
    inventory.attributes = row.to_hash.select { |k,v| allowed_attributes.include? k }
    inventory.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Csv.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end

require 'pry'
def nyc_pigeon_organizer(data)
  output_data = {}
  # pige_names - the names of the pigeons, will be the top level keys
  # pige_keys - the categories, will be second level
  # pige_values - the values of the categories
  
  binding.pry
  
end


def clip()
if !output_data.key?(name) then output_data[name] = {} end
      if !output_data[name].key?(key) then output_data[name][key] = [] end
      if !output_data[name][key].include?(value) then output_data[name][key].push(value) end
      end
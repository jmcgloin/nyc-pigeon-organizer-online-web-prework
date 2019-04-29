require 'pry'
def nyc_pigeon_organizer(data)
  output_data = {}
  # pige_names - the names of the pigeons, will be the top level keys
  # pige_keys - the categories, will be second level
  pige_keys = data.keys
  # pige_values - the values of the categories
  pige_values = data.values.collect do
    |vals|
    vals.keys
  end
  pige_values = pige_values.flatten
  pige_names = data.values.collect do
    |vals|
    vals.values[0]
  end
  pige_names = pige_names.flatten.uniq
  
  pige_names.each do
    |name|
    output_data[name] = {}
    pige_keys.each do
      |key|
      binding.pry
      if !output_data[name].key?(key) then output_data[name][key] = [] end
      pige_values.each do
        |value|
        if !output_data[name][key].include?(value) then output_data[name][key].push(value) end
  end
  
  
  
  binding.pry
  
end


def clip()
if !output_data.key?(name) then output_data[name] = {} end
      if !output_data[name].key?(key) then output_data[name][key] = [] end
      if !output_data[name][key].include?(value) then output_data[name][key].push(value) end
      end
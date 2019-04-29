require 'pry'
def nyc_pigeon_organizer(data)
  output_data = {}
  
  # pige_names - the names of the pigeons, will be the top level keys
  pige_names = data.values.collect do
    |vals|
    vals.values[0]
  end
  pige_names = pige_names.flatten.uniq
  # this gives an array of all the pigeon names
  
  # Hash of the categories and their values, e.g. color => grey
  keys_vals = data.keys.collect do
    |category|
    [category] = data[category].keys
  end
  binding.pry
end
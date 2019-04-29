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
  
  # Populate the output data with the names as keys
  pige_names.each do
    |name|
    output_data[name] = {}
  end
  
  # Hash of the categories and their values, e.g. color => grey
  keys_vals = {}
  data.keys.each do
    |category|
    keys_vals[category] = data[category].keys
  end
  # this gives all combinations
  
  # Now check for each combination that each name is in
  keys_vals.keys.each do
    |key|
    keys_vals[key].each do
      |val|
      pige_names.each do
        |name|
        if data[key][val].include?(name)
          if !output_data[name].key?(key) then output_data[name][key] = [] end
          if name == "Alex" && key == :lives && val = "City Hall" then binding.pry end
          if !output_data[name][key].include?(val) then output_data[name][key].push(val) end
        end
      end
    end
  end
  
      
  
  # binding.pry
end

# data = {:color=>
#   {:purple=>["Theo", "Peter Jr.", "Lucky"],
#   :grey=>["Theo", "Peter Jr.", "Ms. K"],
#   :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
#   :brown=>["Queenie", "Alex"]},
# :gender=>
#   {:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#   :female=>["Queenie", "Ms. K"]},
# :lives=>
#   {"Subway"=>["Theo", "Queenie"],
#   "Central Park"=>["Alex", "Ms. K", "Lucky"],
#   "Library"=>["Peter Jr."],
#   "City Hall"=>["Andrew"]}}
   
# nyc_pigeon_organizer(data)

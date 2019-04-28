require 'pry'
def nyc_pigeon_organizer(data)
  output_data = {}
  keys = data.keys
  values = []
  keys.each do
    |descriptions|
    values.push 
  binding.pry
end


def clip()
if !output_data.key?(name) then output_data[name] = {} end
      if !output_data[name].key?(key) then output_data[name][key] = [] end
      if !output_data[name][key].include?(value) then output_data[name][key].push(value) end
      end
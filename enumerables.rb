require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_names = []
  spicy_foods.map do |str|
    # puts str[:name]
    spicy_names << str[:name]
  end
  spicy_names
end

# puts get_names

def spiciest_foods(spicy_foods)
  spicy_foods.filter do |h|
    h[:heat_level]>5
  end
end     

# puts spiciest_foods
  
def print_spicy_foods(spicy_foods)
  spicy_foods.map do |new_array|
  #  print new_array.keys[0].(new_array[:cuisine]) | "Heat Level: #{new_array[:heat_level * 🌶]}" 
   print "#{new_array[:name]} (#{new_array[:cuisine]}) | Heat Level: #{'🌶' * new_array[:heat_level]}\n"

  end  
end

# puts print_spicy_foods


def get_spicy_food_by_cuisine(spicy_foods,cuisine) 
  spicy_foods.find do |meal|
    meal[:cuisine] == cuisine
  end
end

# puts get_spicy_foods_by_cuisine

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |meal|
    meal[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  chilly_foods = spicy_foods.filter do |meal|
    meal[:heat_level]>5
  end
  new_chilly_array = chilly_foods.map do |meal|
    print "#{meal[:name]} (#{meal[:cuisine]}) | Heat Level: #{'🌶' * meal[:heat_level]}\n"
  end
end

puts print_spiciest_foods spicy_foods


def average_heat_level(spicy_foods)
  spicy_foods.map{|meal| meal[:heat_level]}.sum/spicy_foods.length
end
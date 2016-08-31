def selects_all_female_bears_return_name_and_age
  "SELECT bears.name, bears.age from bears WHERE gender = 'F'"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT bears.name from bears order by bears.name asc"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT bears.name, bears.age from bears where alive = 1 order by bears.age asc"
end

def selects_oldest_bear_and_returns_name_and_age
  "SELECT bears.name, MAX(bears.age) from bears"
end

def select_youngest_bear_and_returns_name_and_age
  "SELECT bears.name, MIN(bears.age) from bears"
end

def selects_most_prominent_color_and_returns_with_count
  "SELECT bears.color, COUNT(bears.color) from bears WHERE bears.color = (SELECT MAX(bears.color) from bears);"
end

def counts_number_of_bears_with_goofy_temperaments
  "SELECT COUNT(*) from bears where temperament = 'goofy'"
end

def selects_bear_that_killed_Tim
  "SELECT * from bears where temperament = 'aggressive'"
end
# INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES
# (1,"Mr. Chocolate", 20, "M", "dark brown", "calm", 0),
# (2,"Rowdy", 10, "M", "black", "intense", 1),
# (3,"Tabitha", 6, "F", "dark brown", "Nice", 1),
# (4,"Sargeant Brown", 19, "M", "Green", "Slimy", 0),
# (5,"Melissa", 13, "F", "dark brown", "goofy", 1),
# (6,"Grinch", 2, "M", "Black", "Grinchy", 1),
# (7,"Wendy", 6, "F", "Blue", "naive", 1),
# (8,null, 20, "M", "black", "aggressive", 0);
